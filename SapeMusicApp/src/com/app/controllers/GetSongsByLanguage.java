package com.app.controllers;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class GetSongsByLanguage
 */
@WebServlet("/getSongsByLanguageServlet")
public class GetSongsByLanguage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetSongsByLanguage() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String lang = request.getParameter("language");
		ArrayList<Song> songList = new ArrayList<Song>();
		SapeMusicDAO musicDao = new SapeMusicDAOImpl();
		songList = musicDao.getAllSongsByLanguageFromDB(lang);
		request.setAttribute("languagelist", songList);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
		requestDispatcher.forward(request, response);

	}
}
