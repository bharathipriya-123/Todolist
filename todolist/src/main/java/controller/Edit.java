package controller;

import java.io.IOException;
import java.security.Provider;
import java.security.Provider.Service;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Task;
@WebServlet("/edit")
public class Edit extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		Dao dao=new Dao();
		try {
			Task task=dao.findTaskById(id);
			req.setAttribute("task",task);
			RequestDispatcher dispatcher=req.getRequestDispatcher("edittask.jsp");
			dispatcher.include(req,resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	

}
