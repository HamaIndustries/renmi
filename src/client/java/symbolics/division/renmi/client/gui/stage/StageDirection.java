package symbolics.division.renmi.client.gui.stage;

import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.story.ActLine;
import symbolics.division.renmi.util.ParseUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public sealed interface StageDirection permits ActorDirection, TextDirection {
	Pattern LINE = Pattern.compile(
		"(?<instr>(?<name>\\S+)\\s?(?<expr>\\S+)\\s?(?<pos>[0-9]+):)?\\s*(?<text>.+)\\s*"
	);

	static List<StageDirection> parse(ActLine line) {
		String text = line.text();
		Matcher matcher = LINE.matcher(text);
		var directions = new ArrayList<StageDirection>();
		if (matcher.matches()) {
			String name = matcher.group("name");
			String expression = matcher.group("expr");
			String pos = matcher.group("pos");

			if (name != null) {
				directions.add(new ActorDirection(Renmi.id(name), expression == null ? "neutral" : expression, pos == null ? -1 : Integer.parseInt(pos)));
			}
			directions.add(new TextDirection(ParseUtil.parseLine(matcher.group("text"))));
		} else {
			Renmi.LOGGER.info("FAILED TO MATCH!!!!");
			Renmi.LOGGER.info(text);
		}
		return directions;
	}
}
