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
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123");
		}catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
		
		//메소드 정의(DB연동 됐는지 확인하기 위한 테스트)
		public void test() {
			Connection conn = null;
			
			try {
				conn = getConnection();
				System.out.println("Connection:"+conn);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		// 오디션 등록 메소드
		public void insert(VO v) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			String query = "insert into tbl_artist_201905(artist_id, artist_name,artist_gender, artist_birth, talent, agency) "
					+ "values(?,?,?,?,?,?)";
			
			try {
				conn=getConnection();
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, v.getArtist_id());
				pstmt.setString(2, v.getArtist_name());
				pstmt.setString(3, v.getArtist_gender());
				pstmt.setString(4, v.getArtist_birth());
				pstmt.setString(5, v.getTalent());
				pstmt.setString(6, v.getAgency());
				pstmt.executeUpdate();
			} catch (Exception e) {
				
			}
		}
		// 회원 목록
		public List<VO> mlist() {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			List<VO>list = new ArrayList<>();
			
			String sql = "select * from tbl_artist_201905";
			try {
				
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					VO v = new VO();
					v.setArtist_id(rs.getString("artist_id"));
					v.setArtist_name(rs.getString("artist_name"));
					v.setArtist_birth(rs.getString("artist_birth"));
					v.setArtist_gender(rs.getString("artist_gender"));
					v.setTalent(rs.getString("talent"));
					v.setAgency(rs.getString("agency"));
					
					list.add(v);
				}			
			} catch (Exception e) {

			}
			return list;
			
		}
		//멘토 점수 목록 조회
		public List<VO> mList(){
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			List<VO> list = new ArrayList<VO>();
			String query ="select serial_no, a.artist_id, artist_name, artist_birth, point, mento_name\r\n" + 
					"from tbl_artist_201905 a, tbl_mento_201905 m, tbl_point_201905 p\r\n" + 
					"where a.artist_id=p.artist_id and m.mento_id=p.mento_id\r\n" + 
					"ORDER BY serial_no";
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
				VO v = new VO();
				v.setSerial_no(rs.getInt("serial_no"));
				v.setArtist_id(rs.getString("artist_id"));
				v.setArtist_name(rs.getString("artist_name"));
				v.setArtist_birth(rs.getString("artist_birth"));
				v.setPoint(rs.getInt("point"));
				v.setMento_name(rs.getString("mento_name"));
				list.add(v);
				
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
			
		}
		//참가자 점수 목록 조회
		public List<VO> rList(){
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			List<VO> list = new ArrayList<VO>();
			String query ="select a.artist_id, artist_name, artist_gender, sum(point) as tot, round(avg(point),2) as ave\r\n" + 
					"from tbl_artist_201905 a, tbl_point_201905 p\r\n" + 
					"where a.artist_id=p.artist_id\r\n" + 
					"group by a.artist_id, artist_name, artist_gender\r\n" + 
					"order by sum(point) desc";
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
				VO v = new VO();
				v.setArtist_id(rs.getString("artist_id"));
				v.setArtist_name(rs.getString("artist_name"));
				v.setArtist_gender(rs.getString("artist_gender"));
				v.setTot(rs.getInt("tot"));
				v.setAve(rs.getDouble("ave"));
				list.add(v);
				
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
			
		}
}
