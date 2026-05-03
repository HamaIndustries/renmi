package symbolics.division.renmi.client.gui.stage;

import net.minecraft.IdentifierException;
import net.minecraft.client.Minecraft;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.story.ActLine;
import symbolics.division.renmi.util.ParseUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public sealed interface StageDirection permits ActorDirection, HideDirection, SoundDirection, TextDirection {
	Pattern LINE = Pattern.compile(
		"(?<instr>(?<name>\\S+)\\s*(?<expr>\\S+)?\\s*(?<pos>[-0-9]+)?\\s*(?<dir>\\S+)?\\s*:)?\\s*(?<text>.+)?\\s*"
	);

	static List<StageDirection> parse(ActLine line) {
		String text = line.text();
		Matcher matcher = LINE.matcher(text);
		var directions = new ArrayList<StageDirection>();
		Map<String, String> aliases = ParseUtil.getAliases(line.globalTags());
		if (matcher.matches()) {
			String name = matcher.group("name");
			String expression = matcher.group("expr");
			String pos = matcher.group("pos");
			String dir = matcher.group("dir");

			if (name != null) {
				name = aliases.getOrDefault(name, name);
				directions.add(new ActorDirection(
					Renmi.id(name),
					expression == null ? "neutral" : expression,
					0,
					0,
					pos == null ? -1 : Integer.parseInt(pos),
					ActorDirection.getFacing(dir)
				));
			}
			if (matcher.group("text") != null) {
				directions.add(new TextDirection(ParseUtil.parseLine(matcher.group("text"), Minecraft.getInstance().player)));
			} else {
				directions.add(new TextDirection(Component.empty()));
			}
		} else {
			Renmi.LOGGER.info("FAILED TO MATCH!!!!");
			Renmi.LOGGER.info(text);
		}

		for (String tag : line.tags()) {
			String[] tagArgs = tag.split(" ");
			boolean isTagArgsEmpty = tagArgs.length == 0;
			if (!isTagArgsEmpty) {
				if (tagArgs[0].equals("sound")) {
					Identifier soundId = tagArgs.length >= 2 ? Identifier.parse(tagArgs[1]) : null;
					float volume = tagArgs.length >= 3 ? Float.parseFloat(tagArgs[2]) : 1.0F;
					float pitch = tagArgs.length >= 4 ? Float.parseFloat(tagArgs[3]) : 1.0F;
					if (soundId != null) {
						directions.add(new SoundDirection(soundId, Optional.of(volume), Optional.of(pitch)));
					} else {
						Renmi.LOGGER.info("FAILED TO PARSE SOUND TAG, MISSING SOUND IDENTIFIER!!!!");
						Renmi.LOGGER.info(text);
					}
				} else if (tagArgs[0].equals("hide") && tagArgs.length >= 2) {
					try {
						directions.add(new HideDirection(Renmi.id(tagArgs[1])));
					} catch (IdentifierException e) {
						Renmi.LOGGER.error("failed to parse actor to hide with id {}", tagArgs[1]);
					}
				}
			}
		}

		return directions;
	}
}
