package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;
import jdk.nashorn.internal.ir.RuntimeNode.Request;
import service.LoginService;
import service.LoginServiceImpl;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet{
	private LoginService loginService=new LoginServiceImpl();
	
	/*
	 * (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 
		String username=req.getParameter("account");
		String password=req.getParameter("psd");
		User user=loginService.Login(username, password);
		
		if(user!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("User", user);
		}else {
			resp.sendRedirect("LoginForm.jsp");
		}
	}
}
