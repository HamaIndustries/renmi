package symbolics.division.renmi.story;

public interface StoryListener {
	void onWriteGlobal(String key, int value);

	int onReadGlobal(String key);

	int runCommand(String command);
}
