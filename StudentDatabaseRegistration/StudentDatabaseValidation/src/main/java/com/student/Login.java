package com.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter pw=resp.getWriter();
		
		String username=req.getParameter("username");
		String pass=req.getParameter("pass");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empsagar","root","root");
			Statement stmt=con.createStatement();
			String query="Select * from registration where email='"+username+"' and pass1='"+pass+"'";
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs.next()) {
				String uname=rs.getString(1);
				HttpSession session=req.getSession();
				session.setAttribute("uname", uname);
				resp.sendRedirect("home.jsp");
				
			}else {
				resp.sendRedirect("login.jsp");
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
}
