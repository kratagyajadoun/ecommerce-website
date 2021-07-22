package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.entities.User;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			UserDao userDao = new UserDao(FactoryProvider.getFactory());
			User user = userDao.getUserByEmailAndPassword(email, password);
//			System.out.println(user);

			HttpSession httpSession = request.getSession();
			if (user == null) {
				out.println("<h1>Invalid detail</h1>");
				httpSession.setAttribute("message", "Invalid Details!! Try with another one");
				response.sendRedirect("login.jsp");
				return;
			} else {
				out.println("<h1>Welcome " + user.getUserName() + "</h1>");

				httpSession.setAttribute("current-user", user);
				if (user.getUserType().equals("admin")) {
					response.sendRedirect("admin.jsp");
				} else if (user.getUserType().equals("normal")) {
					response.sendRedirect("index.jsp");
				} else {
					out.println("We have not identified your user type");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
