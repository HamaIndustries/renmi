package symbolics.division.renmi.util;

import eu.pb4.placeholders.api.node.TextNode;
import eu.pb4.placeholders.api.parsers.NodeParser;
import eu.pb4.placeholders.api.parsers.TagParser;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.player.Player;
import org.jetbrains.annotations.Nullable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ParseUtil {
	//FIXME: placeholder api globalTags for:
	//	text speed
	//	text pitch
	//	sound effects
	//	delay


	public static final NodeParser PARSER = TagParser.DEFAULT;

	public static final Pattern ALIAS_ACTOR_PATTERN = Pattern.compile("^alias\\s+actor\\s+(\\w+)\\s+(\\w+)$");

	public static Map<String, String> getAliases(List<String> globalTags) {
		HashMap<String, String> aliases = new HashMap<>();
		for (String globalTag : globalTags) {
			Matcher actorAliasMatcher = ALIAS_ACTOR_PATTERN.matcher(globalTag);
			if (actorAliasMatcher.matches()) {
				aliases.put(actorAliasMatcher.group(1), actorAliasMatcher.group(2));
			}
		}
		return aliases;
	}

	public static String parsePlayerName(String lineText, Player player) {
		return lineText.replaceAll("<\\s*PLAYER_NAME\\s*>", player.getPlainTextName());
	}

	public static Component parseLine(String lineText, @Nullable Player player) {
		lineText = parsePlayerName(lineText, player);
		TextNode textNode = PARSER.parseNode("> " + lineText.strip());
		return textNode.toComponent();
	}
}
