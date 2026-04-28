package symbolics.division.renmi.util;

import eu.pb4.placeholders.api.node.TextNode;
import eu.pb4.placeholders.api.parsers.NodeParser;
import eu.pb4.placeholders.api.parsers.TagParser;
import net.minecraft.network.chat.Component;

import java.util.List;
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

	public static String parseAlias(String lineText, List<String> globalTags) {
		for(String globalTag : globalTags) {
			Matcher actorAliasMatcher = ALIAS_ACTOR_PATTERN.matcher(globalTag);
			if(actorAliasMatcher.matches()) {
				String fullName = actorAliasMatcher.group(1);
				String alias = actorAliasMatcher.group(2);

				Pattern shorthand = Pattern.compile(Pattern.quote(alias) + "\\s*:");
				Matcher shorthandMatcher = shorthand.matcher(lineText);
				if (shorthandMatcher.find()) {
					return shorthandMatcher.replaceAll(fullName + ":");
				}
			}
		}
		return lineText;
	}

	public static Component parseLine(String lineText) {
		TextNode textNode = PARSER.parseNode("> " + lineText.strip());

		return textNode.toComponent();
	}
}
