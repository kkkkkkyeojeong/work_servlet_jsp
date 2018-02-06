package com.koitt.book.model;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.book.dao.BookDao;
import com.koitt.book.vo.Book;

public class UpdateCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException {
		
		String page = "./book/update-ok.jsp";
		
		String no = req.getParameter("isbn");
		String description = req.getParameter("description");
		String title = req.getParameter("title");
		
		if(no == null || no.trim().length() == 0) {
			throw new IllegalArgumentException("책 번호가 필요합니다.");
		}
		
		Integer isbn = Integer.parseInt(no);
		
		Book book = new Book();
		
		book.setIsbn(isbn);
		book.setDescription(description);
		
		BookDao dao = new BookDao();
		
		dao.update(book);
		
		return page;
		
		
	}

}
