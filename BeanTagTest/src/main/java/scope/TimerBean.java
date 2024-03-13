package scope;
/*
 *
		name						r/w				data type
		-----------------------------------------------------
		elapsedTime					r				long
		restart						w				boolean
		elapsedTimeAfterInst		r				long
		elapsedTimeAfterLastAccess	r				long

 */

public class TimerBean {

	private long elapsedTime;
	private boolean restart;
	private long elapsedTimeAfterInst;
	private long elapsedTimeAfterLastAccess;
	
	public long getElapsedTime() {
		return elapsedTime;
	}

	public void setRestart(boolean restart) {
		this.restart = restart;
	}
	
	public long getElapsedTimeAfterInst() {
		return elapsedTimeAfterInst;
	}
	
	public long getElapsedTimeAfterLastAccess() {
		return elapsedTimeAfterLastAccess;
	}
	
	
	
}
