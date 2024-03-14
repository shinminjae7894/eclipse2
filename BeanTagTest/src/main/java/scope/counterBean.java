package scope;

public class counterBean {
	int visit = 0;
	 
	
	public void setNewVisit(int num) {
		visit = num;
	}
	
	public void setRestart(boolean b) {
		visit = 0;
	}
	
	public int getVisitCount() {
		return visit++;
	}
}
