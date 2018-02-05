package com.koitt.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.koitt.book.util.DBUtil;
import com.koitt.book.vo.Book;

public class BookDao {
	
	public List<Book> selectAll() throws ClassNotFoundException, SQLException {
		
		Connection conn = DBUtil.getInstance().getConnection();
		
		String sql = "SELECT * FROM book ORDER BY isbn DESC";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		List<Book> list = new ArrayList<Book>();
		
		while (rs.next()) {
			Book book = new Book();
			
			book.setIsbn(rs.getInt("isbn"));
			book.setTitle(rs.getString("title"));
			book.setAuthor(rs.getString("author"));
			book.setPublisher(rs.getString("publisher"));
			book.setPrice(rs.getInt("price"));
			book.setDescription(rs.getString("description"));
			
			list.add(book);
		}
		
		DBUtil.getInstance().close(rs);
		DBUtil.getInstance().close(pstmt);
		DBUtil.getInstance().close(conn);
		
		return list;
		
	}
	
	

}
