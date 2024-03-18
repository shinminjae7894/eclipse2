package mybean.dto;

public class Employee {
	private String e_no;
	private String e_id;
	private String e_name;
	private String e_pass;
	private String e_address;
	//DAO : 실제 db와 별도로 따로 작업할 수 있게하는 클래스
	
	public String getE_no() {
		return e_no;
	}
	public void setE_no(String e_no) {
		this.e_no = e_no;
	}
	public String getE_id() {
		return e_id;
	}
	public void setE_id(String e_id) {
		this.e_id = e_id;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_pass() {
		return e_pass;
	}
	public void setE_pass(String e_pass) {
		this.e_pass = e_pass;
	}
	public String getE_address() {
		return e_address;
	}
	public void setE_address(String e_address) {
		this.e_address = e_address;
	}
	
}
