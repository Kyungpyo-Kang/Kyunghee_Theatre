package com.kyunghee.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBUtils {
	//Oracle에 연결하는 Connection을 리턴하는 메소드
	
	public static Connection getOracleConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "";
			String password = "";
			
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 클래스가 존재하지 않거나 로드할 수 없습니다.");
		} catch (SQLException e) {
			System.out.println("데이터베이스 접속 정보가 올바르지 않습니다.");
		}
		return conn;
	}
	
	//데이터베이스 작업에 사용한 객체를 닫는 메소드
	public static void close(Connection conn) {
		if(conn != null) {try {conn.close();} catch (SQLException e) {;}}
	}
	public static void close(Statement stmt) {
		
		if(stmt != null) {try {stmt.close();} catch (SQLException e) {;}}
	}
	public static void close(PreparedStatement pstmt) {
		if(pstmt != null) {try {pstmt.close();} catch (SQLException e) {;}}
	}
	public static void close(ResultSet rs) {
		if(rs != null) {try {rs.close();} catch (SQLException e) {;}}
	}

}

