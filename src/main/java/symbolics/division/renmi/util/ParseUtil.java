package symbolics.division.renmi.util;

import eu.pb4.placeholders.api.node.TextNode;
import eu.pb4.placeholders.api.parsers.NodeParser;
import eu.pb4.placeholders.api.parsers.TagParser;
import net.minecraft.network.chat.Component;

public class ParseUtil {
	public static final NodeParser PARSER = TagParser.DEFAULT;

	public static Component parseLine(String lineText) {
		TextNode textNode = PARSER.parseNode("> " + lineText.strip());
		return textNode.toComponent();
	}
}
