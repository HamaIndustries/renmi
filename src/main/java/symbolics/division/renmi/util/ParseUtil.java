package symbolics.division.renmi.util;

import eu.pb4.placeholders.api.node.TextNode;
import eu.pb4.placeholders.api.parsers.NodeParser;
import eu.pb4.placeholders.api.parsers.TagParser;
import net.minecraft.network.chat.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ParseUtil {
	//FIXME: placeholder api tags for:
	//	text speed
	//	text pitch
	//	sound effects
	//	delay

//	private TagRegistry TAG_REGISTRY = TagRegistry.copyDefault();
//	{
//		TAG_REGISTRY.register(
//			TextTag.self(
//				"expression",
//				"special",
//				false,
//				(nodes, arg, parser) -> {
//
//				}
//			)
//		);
//	}


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

	public static Component parseLine(String lineText) {
		TextNode textNode = PARSER.parseNode("> " + lineText.strip());

		return textNode.toComponent();
	}
}
