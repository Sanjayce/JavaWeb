package com.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlets")
public class Servlets extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void init(){
		System.out.println("===init()===");
	}

	@Override
	public void init(ServletConfig config){
		System.out.println("===init(ServletConfig config)===");
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("===service()===");
	}

	@Override
	public void destroy() {
		System.out.println("===destroy() ===");
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("===doGet===");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("===doPost===");
		//request.getSession().setAttribute(string, object);
		response.sendRedirect("jump.jsp");//返回请求数据
		//request.getRequestDispatcher(".jsp").forward(request,response);//请求重定向
	}

}
