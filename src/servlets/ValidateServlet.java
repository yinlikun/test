package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import entity.User;
import repository.UserRepositoryImpl;

/**
 * Servlet implementation class ValidateServlet
 */
@WebServlet("/Validate01")
public class ValidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User student;
	UserRepositoryImpl userrepository=new UserRepositoryImpl();
	ArrayList<User> list=new ArrayList<>();

	/**
	 * 得到验证码验证并返回错误信息
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//解决乱码问题
				response.setContentType("text/html;charset=utf-8");
				// 得到提交的验证码
				String code=request.getParameter("code");
				HttpSession session=request.getSession();
				String randStr=(String)session.getAttribute("randStr");
				if(!code.equals(randStr)) {
					request.setAttribute("codestring", "验证码错误");
					request.getRequestDispatcher("loginForm.jsp").forward(request, response);
				}
				else {
					
				}
				
			}
		
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
