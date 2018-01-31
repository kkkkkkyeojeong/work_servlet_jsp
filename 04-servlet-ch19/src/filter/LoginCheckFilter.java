package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/*
 * p.558
 * 
 * 로그인이 필요한 특정 경로로 바로 접속했을 경우 
 * 로그인이 안된 상태로 접속시 , 로그인 페이지를 출력하도록 해주는 필터
 */
public class LoginCheckFilter implements Filter{

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	

	@Override			// ServletRequest: HttpServletRequest의 부모클래스 
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		System.out.println("로그인 체크 필터로 들어감");
		
		// HttpServletRequest의 기능을 사용하기 위해 다운캐스팅 (getSession 메소드)
		HttpServletRequest httpReq = (HttpServletRequest) req;
		
		// getSession(false): 현재 세션이 존재하면(로그인이 되어있으면) 세션 객체를 리턴, 아니면 null 리턴 
		// getSession(true): 현재 세션이 존재하면 세션 객체를 리턴, 아니면 새로 세션을 생성해서 리턴
		HttpSession session = httpReq.getSession(false);
		
		// 로그인 유무 판단하기 위한 boolean 변수 
		boolean login = false;
		
		// 세션이 존재하면 
		if(session != null) {
			// MEMBER key에 해당하는 값이 존재한다면 로그인 된 상태이므로 login 값을 true로 설정 
			if(session.getAttribute("MEMBER") != null) {
				login = true;
			}
		}
		
		// 로그인 된 상태라면 
		if(login) {
			// doFilter 호출 전은 클라이언트로부터 요청이 들어오는 방향 
			chain.doFilter(req, resp);	// boardList로 이동 	
			// doFilter 호출 후는 서버로부터 클라이언트로 응답이 나가는 방향 
			System.out.println("필터 처리 끝난 후 서버의 응답을 빠져나감");
		}
		else {
			// 로그인 페이지로 이동 
			RequestDispatcher dispatcher = req.getRequestDispatcher("/login-form.do");
			dispatcher.forward(req, resp);
		}
		
	}

	
	@Override
	public void destroy() {
		
	}


}
