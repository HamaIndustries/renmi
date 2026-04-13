package symbolics.division.renmi;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.IntegerArgumentType;
import com.mojang.brigadier.arguments.StringArgumentType;
import com.mojang.brigadier.builder.LiteralArgumentBuilder;
import com.mojang.brigadier.context.CommandContext;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.commands.CommandBuildContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.commands.arguments.IdentifierArgument;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import symbolics.division.renmi.story.Act;
import symbolics.division.renmi.story.RenmiLibrary;
import symbolics.division.renmi.story.Series;

public class RenmiCommands {
	public static void init() {
		CommandRegistrationCallback.EVENT.register(RenmiCommands::register);
	}

	public static void register(
		CommandDispatcher<CommandSourceStack> dispatcher,
		CommandBuildContext context,
		Commands.CommandSelection var3
	) {
		LiteralArgumentBuilder<CommandSourceStack> createCommand = Commands.literal("create")
			.requires(Commands.hasPermission(Commands.LEVEL_GAMEMASTERS))
			.then(
				Commands.argument("series_id", IdentifierArgument.id())
					.then(
						Commands.argument("act_id", IdentifierArgument.id())
							.then(
								Commands.argument("script", StringArgumentType.string())
									.executes(RenmiCommands::createAct)
							)
					)
			);

		LiteralArgumentBuilder<CommandSourceStack> storyCommand = Commands.literal("story")
			.then(Commands.literal("read").then(
					Commands.argument("series_id", IdentifierArgument.id())
						.then(
							Commands.argument("act_id", IdentifierArgument.id())
								.executes(RenmiCommands::readAct)
						)
				)
			).then(Commands.literal("proceed")
				.executes(RenmiCommands::readingProceed)
			).then(Commands.literal("choose")
				.then(Commands.argument("index", IntegerArgumentType.integer())
					.executes(RenmiCommands::readingChoice)
				)
			);

		LiteralArgumentBuilder<CommandSourceStack> base = Commands.literal("renmi")
			.then(createCommand)
			.then(storyCommand);
		dispatcher.register(base);
	}

	private static Identifier series(CommandContext<CommandSourceStack> context) {
		return context.getArgument("series_id", Identifier.class);
	}

	private static Identifier act(CommandContext<CommandSourceStack> context) {
		return context.getArgument("act_id", Identifier.class);
	}

	private static int createAct(CommandContext<CommandSourceStack> context) {
		try {
			var library = context.getSource().getServer().globalAttachments().getAttachedOrCreate(RenmiAttachments.LIBRARY);
			String script = context.getArgument("script", String.class).replace("\\n", "\n");
			library.createActFromSource(series(context), act(context), script);

		} catch (RenmiLibrary.RenmiCompilationFailed e) {
			Renmi.LOGGER.info(
				"Failed to create act {}, series {}, from source script!",
				context.getArgument("series_id", Identifier.class),
				context.getArgument("act_id", Identifier.class)
			);
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	private static int readAct(CommandContext<CommandSourceStack> context) {
		ServerPlayer player = context.getSource().getPlayer();
		if (player == null) { return 0; }
		var manager = context.getSource().getServer().globalAttachments().getAttachedOrCreate(RenmiAttachments.READING_MANAGER);
		var library = context.getSource().getServer().globalAttachments().getAttachedOrCreate(RenmiAttachments.LIBRARY);
		Series series = library.getSeries(series(context));
		if (series == null) {
			context.getSource().sendFailure(Component.literal("No such series exists."));
			return 0;
		}
		Act act = series.getAct(act(context));
		if (act == null) {
			context.getSource().sendFailure(Component.literal("No such act exists."));
			return 0;
		}
		manager.startReading(player, act);
		printState(context);
		return 1;
	}

	private static int readingProceed(CommandContext<CommandSourceStack> context) {
		var manager = context.getSource().getServer().globalAttachments().getAttachedOrCreate(RenmiAttachments.READING_MANAGER);
		ServerPlayer player = context.getSource().getPlayer();
		if (player == null) { return 0; }
		manager.readingProceed(player);
		printState(context);
		return 1;
	}

	private static int readingChoice(CommandContext<CommandSourceStack> context) {
		var manager = context.getSource().getServer().globalAttachments().getAttachedOrCreate(RenmiAttachments.READING_MANAGER);
		ServerPlayer player = context.getSource().getPlayer();
		if (player == null) { return 0; }
		int choice = context.getArgument("index", Integer.class);
		manager.readingChoice(player, choice);
		printState(context);
		return 1;
	}

	private static void printState(CommandContext<CommandSourceStack> context) {
		ServerPlayer player = context.getSource().getPlayer();
		if (player == null) { return; }
		var state = player.getAttachedOrCreate(RenmiAttachments.READING_STATE);
		context.getSource().sendSystemMessage(Component.literal("> " + state.line().text()));
		String line = state.line().text() + " | ";
		for (var choice : state.choices()) {
			context.getSource().sendSystemMessage(Component.literal(
				Integer.toString(choice.index()) + ": " + choice.text()
			));
		}
	}
}
