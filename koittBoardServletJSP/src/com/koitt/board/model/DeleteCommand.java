package com.koitt.board.model;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koitt.board.dao.BoardDao;

public class DeleteCommand implements Command{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ClassNotFoundException, SQLException, IllegalArgumentException {
		
		// 1. 포워딩할 JSP 주소
		String page = "./board/delete.jsp";
		
		// 2. 클라이언트( delete-confirm )로부터 post 방식으로 전달받은 no 값 받기
		String _no = req.getParameter("no");	// 
		
		// 3. 입력한 값이 없다면 예외발생
		if(_no == null || _no.trim().length() == 0) {
			throw new IllegalArgumentException("게시물 번호가 없습니다.");
		}
		
		// 4. String 타입의 no값을 Integer로 변경
		Integer no = Integer.parseInt(_no);
		
		// 5. Delete SQL 쿼리문 실행할 BoardDao 객체 생성
		BoardDao dao = new BoardDao();
		
		// 6. 전달받은 번호로 Delete SQL 문 실행
		dao.delete(no);
		
		// 7. BoardServlet(Controller)로 포워딩 할 JSP 페이지 경로 전달
		return page;
		
	}
	
	

}
