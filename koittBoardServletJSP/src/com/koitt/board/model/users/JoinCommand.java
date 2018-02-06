package com.koitt.board.model.users;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.board.dao.UsersDao;
import com.koitt.board.model.Command;
import com.koitt.board.vo.Users;

public class JoinCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp)
			throws ClassNotFoundException, SQLException {
		
		String page = "./users/join-ok.jsp";
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String passwordconfirm = req.getParameter("passwordconfirm");
		
		String name = req.getParameter("name");
		
		// 만약 비밀번호와 확인이 다르면 쿼리문자열 사용해서 오류처리
		if (!password.equals(passwordconfirm)) {
			return "./users/join-form.jsp?error=password";
		}
		
		Users users = new Users();
		
		users.setEmail(email);
		users.setName(name);
		users.setPassword(password);
		
		UsersDao dao = new UsersDao();
		
		dao.insert(users);
	
		return page;
	}
	
	

}
