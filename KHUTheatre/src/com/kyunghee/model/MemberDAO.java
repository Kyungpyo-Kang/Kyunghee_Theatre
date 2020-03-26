package com.kyunghee.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.kyunghee.db.DBUtils;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;

public class MemberDAO {
	
	
	private static MemberDAO instance;
	private static int pw_KEY = 3;
	
	
	//	싱글톤 패턴
	private MemberDAO() {}
	
	
	//	MemberDAO 객체 생성하는 메소드
	public static MemberDAO getInstance() {
		if(instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	//	String -> Date로 변경하는 메소드
	public Date stringToDate(MemberVO member) {
		String year = member.getMember_birthyy();
		String month = member.getMember_birthmm();
		String day = member.getMember_birthdd();
		
		Date member_birth = Date.valueOf(year+"-"+month+"-"+day);
		
		return member_birth;
	}
	
	
	//	회원 비밀번호를 암호화 하는 메소드
	public String en_pw(String pw) {
		String en_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += ((char)(pw.charAt(i)+pw_KEY))+"";
		}
		return en_pw;
	}
	
	
	//	회원 비밀번호를 복호화 하는 메소드
	public String de_pw(String pw) {
		String de_pw = "";
		for (int i = 0; i < pw.length(); i++) {
			de_pw += ((char)(pw.charAt(i)-pw_KEY))+"";
		}
		return de_pw;
	}
	
	//	회원의 기수가 없을 때 0으로 초기화 해주는 메소드
	public String nullToZero(String memberClass) {
		String result = "";
		if(memberClass == null) {
			result = "0";
		}
		return result;
	}
	
	
	//	회원정보를 THEATRE_MEMBER 테이블에 저장하는 메소드
	public void insertMember(MemberVO member) throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
			
			//	커넥션을 가져온다.
			conn = DBUtils.getOracleConnection();
			
			//	자동 커밋은 false로 한다.
			conn.setAutoCommit(false);
			
			//	메모리 낭비를 방지하기 위해 StringBuffer를 사용한다.
			
			StringBuffer sql = new StringBuffer();
			sql.append("insert into THEATRE_MEMBER values");
			sql.append("(NO_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,sysdate)");
			stringToDate(member);
			
			//	StringBuffer에 담긴 값을 얻으려면 toString()메소드를 사용해야 한다.
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, member.getMember_id());
			pstmt.setString(2, en_pw(member.getMember_pw()));
			pstmt.setString(3, member.getMember_name());
			pstmt.setDate(4, stringToDate(member));
			pstmt.setString(5, member.getMember_gender());
			pstmt.setString(6, nullToZero(member.getMember_class()));
			pstmt.setString(7, member.getMember_phone());
			pstmt.setString(8, member.getMember_email());
			
			
			//쿼리를 실행한다.
			pstmt.executeUpdate();
			//완료 시 커밋한다.
			conn.commit();
			
		
		
	}
	
	
	//	아이디 중복확인 메소드
	public boolean checkDup(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String temp = "";
		boolean isDup = false;
		
		try {
			StringBuffer query = new StringBuffer();
			query.append("SELECT MEMBER_ID FROM THEATRE_MEMBER");
			
			conn = DBUtils.getOracleConnection();
			pstmt = conn.prepareStatement(query.toString());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				temp = rs.getString("MEMBER_ID");
				if(id.equals(temp)) {
					isDup = true;
				}
			}
			return isDup;
			
		} catch (Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try {
				if(pstmt != null) {pstmt.close(); pstmt = null;}
				if(conn != null) {conn.close(); conn = null;}
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}
	
	
	//	로그인시 아이디, 비밀번호 체크 메소드
	public int loginCheck(String id, String pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String dbPW = "";	//	db에서 꺼낸 비밀번호를 담을 변수
		int x = -1;
		
		//	쿼리 - 먼저 입력된 아이디로 DB에서 비밀번호를 조회한다.
		try {
			StringBuffer query = new StringBuffer();
			query.append("SELECT MEMBER_PW FROM THEATRE_MEMBER WHERE MEMBER_ID=?");
			
			conn = DBUtils.getOracleConnection();
			pstmt = conn.prepareStatement(query.toString());
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next())	//	입력된 아이디에 해당하는 비밀번호가 있을 경우 
			{
				dbPW = rs.getString("MEMBER_PW");	//비밀번호를 변수에 넣는다.

				//	넘겨받은 비밀번호와 꺼내온 비밀번호를 비교한다. 같으면 x에 1을 넣고 다르면 0을 넣어준다. 
				x = de_pw(dbPW).equals(pw)? 1 : 0;
				
				
			} else {
				x = -1;		//해당 아이디가 존재하지 않을 경우
			}
			
			
			return x;
			
			
			
			
			
			
		} catch (Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try {
				if(pstmt != null) {pstmt.close(); pstmt = null;}
				if(conn != null) {conn.close(); conn = null;}
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}	//	loginCheck()가 끝나는 지점
	
	
	
	
	
	
	
	
}






















