package scope;

import java.util.Random;

public class DiceBean {
	private int max;
	private int min;
	private int cnt =0;
	private Random random = new Random();
	
	public int getRandomNumber() {
		return random.nextInt(max-min+1)+min;
	}
	
	public void setMaxNumber(int num) {
		max = num;
	}
	
	public void setMinNumber(int num) {
		min = num;
	}
	
	public int getCounter() {
		return cnt++;
	}
	
}
