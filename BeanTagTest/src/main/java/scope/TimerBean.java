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

	private long startTime; //타이머를 리셋한 시간
	private long instTime; //전체 시간
	private long lastAccessTime; //프로퍼티에 마지막으로 접근한 시간
	
	public TimerBean() {
		startTime = System.currentTimeMillis(); //현재 시간을 초단위로 저장
		instTime = startTime;
		lastAccessTime = startTime;
	}
	
	//타이머가 리셋한 후에 경과된시간
	public long getElapsedTime() {
		lastAccessTime = System.currentTimeMillis(); 
		return (lastAccessTime - startTime)/1000;
	}//lastAccessTime 해당메서드가 실행됐을때 그것어 어딘지 확인하기 위해 전체다 있어야함

	public void setRestart(boolean b) {
		lastAccessTime = System.currentTimeMillis();
		startTime = System.currentTimeMillis();//현재시간을 계속 재부팅함
	}
	
	public long getElapsedTimeAfterInst() {
		lastAccessTime = System.currentTimeMillis();
		return (lastAccessTime - instTime)/1000;
	}
	
	public long getElapsedTimeAfterLastAccess() {
		long current = System.currentTimeMillis();
		long elapsed = (current - lastAccessTime)/1000;
		
		
		lastAccessTime = System.currentTimeMillis();
		
		return elapsed;
	}
}
