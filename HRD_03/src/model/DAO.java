package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin@localhost:1521:xe","system","123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public void insert(VO v) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		//ResultSet rs = null;
		String query="insert into tbl_student_201905 \r\n" + 
				"(syear, sclass, sno, sname, birth, gender, tel1, tel2, tel3) \r\n" + 
				"VALUES (?,?,?,?,?,?,?,?,?)";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, v.getSyear());
			pstmt.setString(2, v.getSclass());
			pstmt.setString(3, v.getSno());
			pstmt.setString(4, v.getSname());
			pstmt.setString(5, v.getBirth());
			pstmt.setString(6, v.getGender());
			pstmt.setString(7, v.getTel1());
			pstmt.setString(8, v.getTel2());
			pstmt.setString(9, v.getTel3());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			
		}
	}
	//성적 입력 메소드
	public void list(VO v) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String query="insert into tbl_score_201905(syear, sclass, sno, kor, eng, mat)"
				+ "values(?,?,?,?,?,?)";
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(query);
			
			pstmt.setString(1, v.getSyear());
			pstmt.setString(2, v.getSclass());
			pstmt.setString(3, v.getSno());
			pstmt.setInt(4,v.getKor());
			pstmt.setInt(5,v.getEng());
			pstmt.setInt(6,v.getMat());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			
		}
	}
	// 성적 조회
	public List<VO> scoreList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//리턴타입
		List<VO> list = new ArrayList<>();
		String query ="select A.syear, A.sclass, A.sno, sname, gender, kor, eng, mat,(kor+eng+mat) as tot,\r\n" + 
				"round((kor+eng+mat)/3,1) as avg from tbl_student_201905 A, tbl_score_201905 B\r\n" + 
				"where A.syear=b.syear and a.sclass= b.sclass and a.sno=b.sno";
		
		
		try {
			conn =getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO v = new VO();
				v.setSyear(rs.getString("syear"));
				v.setSclass(rs.getString("sclass"));
				v.setSno(rs.getString("sno"));
				v.setSname(rs.getString("sname"));
				v.setGender(rs.getString("gender"));
				v.setKor(rs.getInt("kor"));
				v.setEng(rs.getInt("eng"));
				v.setMat(rs.getInt("mat"));
				v.setTot(rs.getInt("tot"));
				v.setAvg(rs.getDouble("avg"));
				
				list.add(v);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	// 반별통계
	public List<VO> classList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//리턴타입
		List<VO> list = new ArrayList<>();
		String query ="select a.syear,a.sclass,tname,sum(kor) as kor,sum(eng) as eng,sum(mat) as mat,\r\n" + 
				"round(avg(kor),1) as kavg,round(avg(eng),1) as eavg,round(avg(mat),1) as mavg\r\n" + 
				"from tbl_score_201905 a, tbl_dept_201905 b\r\n" + 
				"where  a.syear=b.syear and a.sclass=b.sclass \r\n" + 
				"group by a.syear,a.sclass,tname \r\n" + 
				"order by a.sclass";
		
		
		try {
			conn =getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO v = new VO();
				v.setSyear(rs.getString("syear"));
				v.setSclass(rs.getString("sclass"));
				v.setTname(rs.getString("tname"));
				v.setKor(rs.getInt("kor"));
				v.setEng(rs.getInt("eng"));
				v.setMat(rs.getInt("mat"));
				v.setKavg(rs.getDouble("kavg"));
				v.setEavg(rs.getDouble("eavg"));
				v.setMavg(rs.getDouble("mavg"));
				
				list.add(v);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
