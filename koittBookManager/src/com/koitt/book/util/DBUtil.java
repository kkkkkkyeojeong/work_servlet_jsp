package com.koitt.book.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	
	// 싱글턴
	
	private static DBUtil instance;
	
	private DBUtil() {}
	
	public static DBUtil getInstance() {
		if(instance == null) {
			instance = new DBUtil();
		}
		return instance;
	}
	
	// 데이터베이스 커넥션 객체 가져오는 메소드
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306";
		String dbName = "bookmgr";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection(url + "/" + dbName, "root", "koitt");
		
		return conn;
	}
	
	// close 메소드
	public void close(Connection conn) throws SQLException {
		if(conn != null) {
			conn.close();
		}
	}
	
	public void close(Statement stmt) throws SQLException {
		if(stmt != null) {
			stmt.close();
		}
	}
	
	public void close(ResultSet rs) throws SQLException {
		if (rs != null) {
			rs.close();
		}
	}
	
	public void rollback(Connection conn) throws SQLException {
		if(conn != null) {
			conn.close();
		}
	}
	
	
	
	
	

}
