package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Story;
import symbolics.division.renmi.util.RenmiExceptions;

public interface ExternalListener {
	//FIXME turns out this is redundant, series should control it.
	// we fix in post.
	// or maybe not /shrug. theres merit in giving an actreading a slice of the pie.
	// we'd just rename to something like ActListener in that case.
	static void bindExternals(Story story, ExternalListener listener) throws RenmiExceptions.ExternalBindFailure {
		try {
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
					return listener.onReadGlobal(key);
				}
			}, false);
			story.bindExternalFunction("run_command", new Story.ExternalFunction1<String, Integer>() {
				@Override
				protected Integer call(String command) {
					return listener.onRunCommand(command);
				}
			}, false);
		} catch (Exception e) {
			throw new RenmiExceptions.ExternalBindFailure(e);
		}
	}

	Integer onWriteGlobal(String key, int value);

	Integer onReadGlobal(String key);

	Integer onRunCommand(String command);
}
