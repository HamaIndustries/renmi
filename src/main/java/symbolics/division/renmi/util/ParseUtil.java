package symbolics.division.renmi.util;

import eu.pb4.placeholders.api.node.TextNode;
import eu.pb4.placeholders.api.parsers.NodeParser;
import eu.pb4.placeholders.api.parsers.TagParser;
import net.minecraft.network.chat.Component;

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

	public static Component parseLine(String lineText) {
		TextNode textNode = PARSER.parseNode("> " + lineText.strip());

		return textNode.toComponent();
	}
}
