package symbolics.division.renmi.util;

public class RenmiExceptions {
	public static final class ReadingConditionsUnmet extends Exception {
	}

	public static final class ExternalBindFailure extends Exception {
		public ExternalBindFailure(Throwable cause) {
			super(cause);
		}
	}
}
