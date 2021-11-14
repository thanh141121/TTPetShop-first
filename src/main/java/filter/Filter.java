package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Users;
import utils.SessionUtils;

//@WebFilter(filterName="/JDBCFilter", urlPatterns = {"/*"})
public class Filter implements javax.servlet.Filter{
	private ServletContext context;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response =(HttpServletResponse) servletResponse;
		String url = request.getRequestURI(); 
		System.out.println(url);
		//if (url.startsWith("/admin")) {
			Users model = (Users) SessionUtils.getInstance().getValue(request, "USERMODEL");
			if (model != null) {
				if (model.getRole()==1) {
					System.out.println("1");
					chain.doFilter(servletRequest, servletResponse);
				}else{
					System.out.println("2");
					response.sendRedirect(request.getContextPath ()+"/log-in?action=login&message=not_permission&alert=danger");
				} 
			}else {
				System.out.println("2");
				response.sendRedirect (request.getContextPath() +"/log-in?action=login&message=not_login&alert=danger");
			}
		/*}else{
			System.out.println("3");
			chain.doFilter(servletRequest, servletResponse);
		}*/
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();		
	}

	public Filter() {
		super();
		// TODO Auto-generated constructor stub
	}

}
