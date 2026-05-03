package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Story;
import symbolics.division.renmi.util.RenmiExceptions;

public interface ExternalListener {
	static void bindExternals(Story story, ExternalListener listener) throws RenmiExceptions.ExternalBindFailure {
		try {
			story.bindExternalFunction("on_knot_visited ", new Story.ExternalFunction1<String, String>() {
				@Override
				protected String call(String knotName) {
					listener.onKnotVisited(knotName);
					return knotName;
				}
			}, false);
			story.bindExternalFunction("write_global", new Story.ExternalFunction2<String, Integer, Integer>() {
				@Override
				protected Integer call(String key, Integer value) {
					listener.onWriteGlobal(key, value);
					return value;
				}

			}, false);
			story.bindExternalFunction("read_global ", new Story.ExternalFunction1<String, Integer>() {
				@Override
				protected Integer call(String key) {
					listener.onReadGlobal(key);
					return 0;
				}
			}, false);
			story.bindExternalFunction("run_command", new Story.ExternalFunction1<String, Integer>() {
				@Override
				protected Integer call(String command) {
					listener.onRunCommand(command);
					return 0;
				}
			}, false);
		} catch (Exception e) {
			throw new RenmiExceptions.ExternalBindFailure(e);
		}
	}

	String onKnotVisited(String knotName);

	Integer onWriteGlobal(String key, int value);

	Integer onReadGlobal(String key);

	Integer onRunCommand(String command);
}
