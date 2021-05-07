package model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DAO {
	public static Connection getConnection() {
	Connection conn = null; //전역변수 - try안에 만들면 try안에서 밖에 못쓰니 밖에다 생성해서 다 같이 사용하도록
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
	// 회원번호( 마지막 번호에 +1 되는 법)
	public int maxCustno() {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //셀렉 문일때만 필요함
		
		int row = 0;
		String sql = "select max(custno) from tbl_member_04";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				row = rs.getInt(1);
			}
			
		} catch (Exception e) {

		}
		return row;
	}
	// 회원 등록
	public void write(VO v) {
		// 아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		// 등록시에는 rs이 필요가 없음
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "insert into tbl_member_04(custno, custname, phone, gender, joindate, grade, city)"
				+ "values(?,?,?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v.getCustno());
			pstmt.setString(2, v.getCustname());
			pstmt.setString(3, v.getPhone());
			pstmt.setString(4, v.getGender());
			pstmt.setString(5, v.getJoindate());
			pstmt.setString(6, v.getGrade());
			pstmt.setString(7, v.getCity());
			
			pstmt.executeUpdate();

			
		} catch (Exception e) {

		}
		
	}
	// 회원 목록
	public List<VO> mlist() {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<VO>list = new ArrayList<>();
		
		String sql = "select * from tbl_member_04";
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO v = new VO();
				v.setCustno(rs.getInt("custno"));
				v.setCustname(rs.getString("custname"));
				v.setPhone(rs.getString("phone"));
				v.setGender(rs.getString("gender"));
				v.setJoindate(rs.getString("joindate"));
				v.setGrade(rs.getString("grade"));
				v.setCity(rs.getString("city"));
				
				list.add(v);
			}			
		} catch (Exception e) {

		}
		return list;
		
	}
	// 회원 검색
	public VO mselect(int custno) {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //셀렉 문일때만 필요함
		
		// VO를 v로 선언, 리턴 타입이 있을 시 리턴 정의
		VO v = new VO();
		
		String sql = "select * from tbl_member_04 where custno=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, custno);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				v.setCustno(rs.getInt("custno"));
				v.setCustname(rs.getString("custname"));
				v.setPhone(rs.getString("phone"));
				v.setGender(rs.getString("gender"));
				v.setJoindate(rs.getString("joindate"));
				v.setGrade(rs.getString("grade"));
				v.setCity(rs.getString("city"));
			}
			
		} catch (Exception e) {

		}
		return v;
	}
	// 회원 수정
	public void edit(VO v) {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "update tbl_member_004 set custname=?, phone=?, gender=?, joindate=?, grade=?, city=? where custno=?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, v.getCustname());
			pstmt.setString(2, v.getPhone());
			pstmt.setString(3, v.getGender());
			pstmt.setString(4, v.getJoindate());
			pstmt.setString(5, v.getGrade());
			pstmt.setString(6, v.getCity());
			pstmt.setInt(7, v.getCustno());
			
			pstmt.executeUpdate();

			
		} catch (Exception e) {

		}
		
	}
	// 판매번호 (마지막 +1)
	public int maxSaleno() {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //셀렉 문일때만 필요함
		
		int row = 0;
		String sql = "select max(saleno) from tbl_money_04";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				row = rs.getInt(1);
			}
			
		} catch (Exception e) {

		}
		return row;
	}
	// 상품 등록
	public void minsert(VO v) {

		Connection conn = null;
		PreparedStatement pstmt = null;

		String sql = "insert into tbl_money_04(saleno, custno, pcode, amount, sdate)values(?,?,?,?,?)";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, v.getSaleno());
			pstmt.setInt(2, v.getCustno());
			pstmt.setString(3, v.getPcode());
			pstmt.setInt(4, v.getAmount());
			pstmt.setString(5, v.getSdate());
			
			pstmt.executeUpdate();

			
		} catch (Exception e) {

		}
		
	}
	// 회원 매출 현황
	public List<VO> mmlist() {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<VO>list = new ArrayList<>();
		
		String sql = "select saleno, custname, sdate, pname, amount, pcost,(amount*pcost) as tot \r\n" + 
				"    from tbl_member_04 T1, tbl_money_04 T2, tbl_goods_04 T3 \r\n" + 
				"        where t1.custno=t2.custno and t2.pcode=t3.pcode\r\n" + 
				"            order by t2.saleno";
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO v = new VO();
				v.setSaleno(rs.getInt("saleno"));
				v.setCustname(rs.getString("custname"));
				v.setSdate(rs.getString("sdate"));
				v.setPname(rs.getString("pname"));
				v.setAmount(rs.getInt("amount"));
				v.setPcost(rs.getInt("pcost"));
				v.setTot(rs.getInt("tot"));
				
				list.add(v);
			}			
		} catch (Exception e) {

		}
		return list;
		
	}
	// 회원별 매출 조회
	public List<VO> mmmlist() {
		//아래 c,p,r은 또 다른 메소드에 생성 했기 때문에 전역변수 설정을 해준 것. 위에서 DAO밑에다 하면 안해도 됨
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<VO>list = new ArrayList<>();
		
		String sql = "select t1.custno, custname, phone, grade, sum((amount*pcost)) as tot \r\n" + 
				"from tbl_member_04 T1, tbl_money_04 T2, tbl_goods_04 T3 \r\n" + 
				"where t1.custno=t2.custno and t2.pcode=t3.pcode\r\n" + 
				"group by t1.custno, custname, phone, grade\r\n" + 
				"order by sum((amount*pcost)) desc";
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VO v = new VO();
				v.setCustno(rs.getInt("custno"));
				v.setCustname(rs.getString("custname"));
				v.setPhone(rs.getString("phone"));
				v.setGrade(rs.getString("grade"));
				v.setTot(rs.getInt("tot"));
				
				list.add(v);
			}			
		} catch (Exception e) {

		}
		return list;
		
	}
}
