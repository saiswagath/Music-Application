package com.app.DAO;

import java.util.ArrayList;

import com.app.bean.Song;
import com.app.bean.User;

public interface SapeMusicDAO {
	public void addSongToDB(Song song);
	public void updateSongToDB(Song song);
	public void deleteSongFromDB(Song song);
	public ArrayList<Song> getAllSongsFromDB();
	public ArrayList<Song> getAllSongsByGenreFromDB(String category);
	public ArrayList<Song> getAllSongsByMovieFromDB(String category);
	public ArrayList<Song> getAllSongsByLanguageFromDB(String category);
	public ArrayList<Song> getAllSongsByArtistFromDB(String category);
	public void addUserDetailsToUserDB(User user);
	public boolean validateSapeMusicDAO(String username, String password);

	
}
