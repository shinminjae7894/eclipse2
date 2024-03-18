package mybean.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import mybean.dto.Employee;

//실제 사원 정보를 db에 저장하는 목적
public class EmployeeDao {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	public EmployeeDao() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			conn = DriverManager.getConnection(url,"scott","1111");
		}
		catch(Exception err) {
			System.out.println("연결 객체 생성 실패 : " + err);
			}
		}
	
	public void freeConn() {
		if(conn != null) try {conn.close();}catch(Exception err) {};
		if(stmt != null) try {stmt.close();}catch(Exception err) {};
		if(rs != null) try {rs.close();}catch(Exception err) {};
	}
	
	//addEmp.jsp
	public void setEmp(Employee emp) {
		String sql = "insert into tblEmp(e_no,e_id,e_name, e_pass,"+ 
				"e_address)values(seq_eno.nextVal,?,?,?,?)";
				
		
		try {
			stmt = conn.prepareStatement(sql);
		
			
			stmt.setString(1,emp.getE_id());
			stmt.setString(2,emp.getE_name());
			stmt.setString(3,emp.getE_pass());
			stmt.setString(4,emp.getE_address());
			
		
			stmt.executeUpdate();
		}
		catch(Exception err) {
			System.out.println("setEmp()에서 오류 : " + err);
		}
		finally{
			freeConn();
		}
	}
	
	//updateEmp.jsp, 매개변수도 있고, return값도 하나가 아니기 때문에 action태그 불가능 
	public Employee getEmp(String no) {
		String sql = "select * from tblEmp where e_no=?";
		Employee emp = null;
		
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, no);
			rs = stmt.executeQuery();
			
			
			if(rs.next()) {
				emp = new Employee();
				emp.setE_address(rs.getString("e_address"));
				emp.setE_id(rs.getString("e_id"));
				emp.setE_name(rs.getString("e_name"));
				emp.setE_pass(rs.getString("e_pass"));
			
			}
		}
		catch(Exception err) {
			System.out.println("getEmp()에서 오류 " + err);
		}
		finally{
			freeConn();
		}
		
		return emp;
	}
	
	// updateEmp_proc.jsp
	public void updateEmp(Employee emp) {
		String sql = "update tblEmp set e_name=?, e_pass=?, e_address=? where e_no=?";
				
		
		try {
			stmt = conn.prepareStatement(sql);
		
			
			stmt.setString(1,emp.getE_name());
			stmt.setString(2,emp.getE_pass());
			stmt.setString(3,emp.getE_address());
			stmt.setString(4,emp.getE_no());
		
			stmt.executeUpdate();
		}
		catch(Exception err) {
			System.out.println("updateEmp()에서 오류 : " + err);
		}
		finally{
			freeConn();
		}
	}
	//deleteEmp.jsp
	public void setDeleteEmp(String no) {
		String sql = "delete from tblEmp  where e_no=?";
				
		
		try {
			stmt = conn.prepareStatement(sql);
			stmt.setString(1,no);
			stmt.executeUpdate();
		}
		catch(Exception err) {
			System.out.println("setDeleteEmp()에서 오류 : " + err);
		}
		finally{
			freeConn();
		}
	}
	//index.jsp
	public ArrayList<Employee> getList(){
		return null;
	}
}
