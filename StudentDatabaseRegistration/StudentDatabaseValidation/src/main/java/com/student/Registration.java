package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Registration extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			resp.setContentType("text/html");
			PrintWriter out=resp.getWriter();
			
			String name=req.getParameter("name");
			String address=req.getParameter("address");
			String email=req.getParameter("email");
			String collage=req.getParameter("collage");
			String pass1=req.getParameter("pswd1");
		
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empsagar","root","root");
				Statement stmt=con.createStatement();
				String query="insert into registration values('"+name+"','"+address+"','"+email+"','"+collage+"','"+pass1+"')";
				stmt.executeUpdate(query);
				HttpSession session=req.getSession();
				session.setAttribute("uname", name);
				resp.sendRedirect("home.jsp");
				
			} catch (Exception e) {
				System.out.println(e);
			}
	}
		
}
