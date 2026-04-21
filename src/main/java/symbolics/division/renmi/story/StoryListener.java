package symbolics.division.renmi.story;

public interface StoryListener {
	void onKnotVisited(String knot);

	void onWriteGlobal(String key, int value);

	int onReadGlobal(String key);
}
