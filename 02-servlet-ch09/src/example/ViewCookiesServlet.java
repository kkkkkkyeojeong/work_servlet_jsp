package example;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ViewCookiesServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		out.println("<h1>쿠키목록</h1>");
		
		// 클라이언트에 있는 쿠키의 배열을 가져온다.
		Cookie[] cookies = req.getCookies();
		
		// 쿠키의 유무 확인, 있다면 for문 이용하여 cookies에 저장된 쿠키를 출력 
		if(cookies != null && cookies.length >0 ) {
			for (int i = 0; i < cookies.length; i++) {
				out.println(cookies[i].getName());
				out.println(" = ");
				out.println(URLDecoder.decode(cookies[i].getValue(), "utf-8") + "<br>");	// 최범균을 다시 한글로 출력하기 위해 변환 
			}
		}
		else {
			out.println("쿠키가 존재하지 않습니다.");
		}
		
		out.flush();
		out.close();
		
	}

}
