package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public UserDAO() {
		try {
			String qul ="jdbc:mysql://localhost:3306/BBS";
			String dbID = "system";
			String dbPW = "123";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(qul,dbID,dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String userID, String userPassword) {
		String qul = "select userPassword from user_94 whereID=?";

		try {
			pstmt = conn.prepareStatement(qul);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				if(rs.next()) {
					if(rs.getString(1).equals(userPassword)) {
						return 1; // 로그인 성공
					}
					else
						return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류 
	
	}
	public int join(User user) {
		String qul ="insert into user values(?,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(qul);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
		
}
