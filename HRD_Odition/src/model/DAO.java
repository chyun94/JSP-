package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {
	private Connection getConnection() {
	Connection conn = null;
	
		try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	// 오디션 등록 메소드
	public void insert(VO v) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String qul="insert into tbl_20210219(id_, name_, gender, birth, talent, agency) \r\n" + 
				"VALUES (?,?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(qul);
			
			pstmt.setString(1, v.getId_());
			pstmt.setString(2, v.getName());
			pstmt.setString(3, v.getGender());
			pstmt.setString(4, v.getBirth());
			pstmt.setString(5, v.talent);
			pstmt.setString(6, v.getAgency());
			pstmt.executeUpdate();				
					
		} catch (Exception e) {
			
		}
	}
	// 팜가자목록조회
	
	// 멘토점수조회
	
	// 참가자등수조회
	
	
}
