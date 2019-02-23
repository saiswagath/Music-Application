package com.app.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.DAO.SapeMusicDAO;
import com.app.DAO.SapeMusicDAOImpl;
import com.app.bean.Song;



/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String choice= request.getParameter("choice");
	out.print(choice);
	SapeMusicDAO sapemusic = new SapeMusicDAOImpl();
	ArrayList<Song> item = sapemusic.getAllSongsFromDB();
	
		if(choice.equalsIgnoreCase("addmovie")){
	
			RequestDispatcher rd = request.getRequestDispatcher("additem.jsp");
			rd.include(request, response);}
			
	else if(choice.equalsIgnoreCase("deletemovie")){
		request.setAttribute("songList", item);	
		RequestDispatcher rd = request.getRequestDispatcher("deleteitem.jsp");
		rd.include(request, response);
	}
	else if(choice.equalsIgnoreCase("updatemovie")){
		request.setAttribute("songList", item);	
		RequestDispatcher rd = request.getRequestDispatcher("updateitem.jsp");
		rd.include(request, response);
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
