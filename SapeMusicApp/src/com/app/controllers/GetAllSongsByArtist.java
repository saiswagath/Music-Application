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
 * Servlet implementation class GetAllSongsByArtist
 */
@WebServlet("/GetAllSongsByArtistServlet")
public class GetAllSongsByArtist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllSongsByArtist() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String artist = request.getParameter("name");
		ArrayList<Song> songList = new ArrayList<Song>();
		SapeMusicDAO musicDao = new SapeMusicDAOImpl();
		songList = musicDao.getAllSongsByArtistFromDB(artist);
		if(songList.isEmpty()){
			request.setAttribute("message", "Wow! wonderful choice, but unfortunately we dont have that Artist right now, sorry!");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("artistname.jsp");
			requestDispatcher.forward(request, response);

		}
		else{
		request.setAttribute("songList", songList);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("final.jsp");
		requestDispatcher.forward(request, response);
	}}

}
