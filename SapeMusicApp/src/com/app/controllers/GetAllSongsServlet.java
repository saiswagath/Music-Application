package com.app.controllers;


import java.io.IOException;
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
 * Servlet implementation class GetAllSongsFromDb
 */
@WebServlet("/aad")
public class GetAllSongsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllSongsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SapeMusicDAO sapemusicdaoa = new SapeMusicDAOImpl();
		
		List<Song> allsonglist = sapemusicdaoa.getAllSongsFromDB();
		request.setAttribute("entirelistdb", allsonglist);
	     RequestDispatcher rd= request.getRequestDispatcher("welcomeuser.jsp");
			rd.forward(request, response);
	}

}