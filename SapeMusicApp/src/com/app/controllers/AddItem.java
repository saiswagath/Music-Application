package com.app.controllers;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class AddItem
 */
@WebServlet("/addItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
	String songname = request.getParameter("name");	
	String artist = request.getParameter("artist");	
	String language = request.getParameter("language");	
	String movie = request.getParameter("movie");	
	String genre = request.getParameter("genre");	
	String file= request.getParameter("file");
	Song song = new Song();

	song.setId(id);
	song.setArtist(artist);
	song.setGenre(genre);
	song.setLanguage(language);
	song.setMovie(movie);
	song.setSongname(songname);
	song.setFile(file);
	//out.print(song);
	SapeMusicDAO choice = new SapeMusicDAOImpl();
	choice.addSongToDB(song);
	PrintWriter out = response.getWriter();
	out.print("song added");
	RequestDispatcher rd= request.getRequestDispatcher("success.jsp");
	rd.forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
