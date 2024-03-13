package simple;

public class MessageBean {
	private String msg;
	
	public String getMsg() {
		return msg;
	}//jsp에선 getter 메서드에 반드시 get을 붙여야함,그 다음 오는 이름은 첫글자 대문자,반드시 return값이 있어야함 void안됨
	
	public void setMsg(String msg) {
		this.msg = msg;
	}//jsp에선 setter 메서드에 반드시 set을 붙여야함,그 다음 오는 이름은 첫글자 대문자,반드시 매개변수 있어야하고 반드시 void여야함
}
