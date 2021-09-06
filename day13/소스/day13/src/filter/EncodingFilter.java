package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		//  필터가 생성될 때 호출되는 메소드
		System.out.println("필터생성!");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// 필터가 생성된 후 요청이 일어날때마다 실행할 메소드
		System.out.println("요청시작!");
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		// 필터가 제거될 때 호출되는 메서드
		System.out.println("필터제거!");
	}


}







