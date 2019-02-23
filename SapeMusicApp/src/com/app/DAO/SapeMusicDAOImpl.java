package com.app.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.app.bean.Song;
import com.app.bean.User;

public class SapeMusicDAOImpl implements SapeMusicDAO {
		
	

	@Override
	public ArrayList<Song> getAllSongsFromDB() {
		PreparedStatement preparedstatement=null;
		Connection connection;

		ArrayList<Song> songList=new ArrayList<>();
		connection = ConnectionDAO.openConnection();
		
		try {
			
			preparedstatement=connection.prepareStatement("select * from Song");
		
			ResultSet rs=preparedstatement.executeQuery();
			
			while(rs.next()){
				int id = rs.getInt(1);
				String songname=rs.getString(2);
				String artist=rs.getString(2);
				String language=rs.getString(3);
				String movie=rs.getString(4);
				String genre=rs.getString(5);
				
				Song song=new Song();
				song.setId(id);
				song.setSongname(songname);
				song.setArtist(artist);
				song.setLanguage(language);
				song.setMovie(movie);
				song.setGenre(genre);
				songList.add(song);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			//logger.error(e.getMessage());
		}finally{
			try{
				if(preparedstatement != null){
				if(connection !=null){
					preparedstatement.close();
					ConnectionDAO.closeConnection();
					//logger.info("database closed");
				}
			}
		}
			catch(Exception e){
				//logger.error(e.getMessage());
			}}
		
		return songList;
	
	}
	public ArrayList<Song> getAllSongsByGenreFromDB(String genre) {
		PreparedStatement preparedstatement=null;
		Connection connection;


		ArrayList<Song> songList=new ArrayList<Song>();
	       PreparedStatement statement=null;
			try{
				connection = ConnectionDAO.openConnection();
				statement=connection.prepareStatement("select * from song where  genre=?");
				statement.setString(1, genre);
				
				ResultSet rs=statement.executeQuery();
				while(rs.next()){
					 //int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String artist = rs.getString(3);
                    String qlanguage = rs.getString(4);
                    String movie = rs.getString(5);
                  
                    String file= rs.getString(7);
                    String image= rs.getString(8);
                    Song song = new Song();
                           
              //     song.setId(id);
                    song.setSongname(name);
                    song.setArtist(artist);
                    song.setLanguage(qlanguage);
                    song.setMovie(movie);
                    song.setGenre(genre);
                    song.setFile(file);
                    song.setImage(image);
                    songList.add(song);
				}
			}catch(Exception e){
				//logger.error(e.getMessage());
				e.printStackTrace();
			}finally {
				try {
					if (statement != null)
					   statement.close();
					ConnectionDAO.closeConnection();
					//logger.info("database closed");
				
				} catch (SQLException e) {
					//logger.error(e.getMessage());
				}
			}
			if(songList.size()==0)
			System.out.println("Genre not found");
			//logger.info("showing items by category");
			return songList;
	
	
	}




	@Override
	public ArrayList<Song> getAllSongsByMovieFromDB(String movie) {
		//PreparedStatement ps=null;
		Connection connection;


		ArrayList<Song> songList=new ArrayList<Song>();
	       PreparedStatement statement=null;
			try{
				connection = ConnectionDAO.openConnection();
				statement=connection.prepareStatement("select * from song where  movie=?");
				statement.setString(1, movie);
				ResultSet rs=statement.executeQuery();
				while(rs.next()){
					int id=rs.getInt(1);
					String name=rs.getString(2);
					String artist=rs.getString(3);
					String language=rs.getString(4);
					String newmovie=rs.getString(5);
					String genre=rs.getString(6);
					 String file= rs.getString(7);
	                    String image= rs.getString(8);
					Song song=new Song();
					song.setArtist(artist);
					song.setGenre(genre);
					song.setId(id);
					song.setLanguage(language);
					song.setSongname(name);
					song.setMovie(newmovie);
					 song.setFile(file);
	                    song.setImage(image);
					
					songList.add(song);
				}
			}catch(Exception e){
				//logger.error(e.getMessage());
				e.printStackTrace();
			}finally {
				try {
					if (statement != null)
					   statement.close();
					ConnectionDAO.closeConnection();
					//logger.info("database closed");
				
				} catch (SQLException e) {
					//logger.error(e.getMessage());
				}
			}
			if(songList.size()==0)
			System.out.println("Movie not found");
			//logger.info("showing items by category");
			return songList;
	
	}
    @Override
    public ArrayList<Song> getAllSongsByLanguageFromDB(String language) {
    	//PreparedStatement ps=null;
		Connection connection;


    	ArrayList<Song> songList = new ArrayList<Song>();
           PreparedStatement statement = null;
           try {
                  connection = ConnectionDAO.openConnection();
                  statement = connection.prepareStatement("select * from song where language=?");
                  statement.setString(1, language);
                  ResultSet rs = statement.executeQuery();
                  while (rs.next()) {
                        //int id = rs.getInt(1);
                        String name = rs.getString(2);
                        String artist = rs.getString(3);
                        String qlanguage = rs.getString(4);
                        String movie = rs.getString(5);
                        String genre = rs.getString(6);
                        String file= rs.getString(7);
                        String image= rs.getString(8);
                        Song song = new Song();
                               
                  //     song.setId(id);
                        song.setSongname(name);
                        song.setArtist(artist);
                        song.setLanguage(qlanguage);
                        song.setMovie(movie);
                        song.setGenre(genre);
                        song.setFile(file);
                        song.setImage(image);
                        songList.add(song);
                  }
           } catch (Exception e) {
                  // logger.error(e.getMessage());
                  e.printStackTrace();
           } finally {
                  try {
                        if (statement != null)
                               statement.close();
                        ConnectionDAO.closeConnection();
                        // logger.info("database closed");

                  } catch (SQLException e) {
                        // logger.error(e.getMessage());
                  }
           }
           if (songList.size() == 0)
                  System.out.println("Language not found");
           // logger.info("showing items by category");
           return songList;

    }



	@Override
	public ArrayList<Song> getAllSongsByArtistFromDB(String artist) {
		PreparedStatement preparedstatement=null;
		Connection connection;


		ArrayList<Song> songList = new ArrayList<Song>();
		PreparedStatement statement = null;
		try {
			connection = ConnectionDAO.openConnection();
			statement = connection.prepareStatement("select * from song where  artist=?");
			statement.setString(1, artist);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String newartist = rs.getString(3);
				String language = rs.getString(4);
				String movie = rs.getString(5);
				String genre = rs.getString(6);
				 String file= rs.getString(7);
                 String image= rs.getString(8);
				Song song = new Song();
				song.setArtist(newartist);
				song.setGenre(genre);
				song.setId(id);
				song.setLanguage(language);
				song.setSongname(name);
				song.setMovie(movie);
				 song.setFile(file);
                 song.setImage(image);
				songList.add(song);
			}
		} catch (Exception e) {
			// logger.error(e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (statement != null)
					statement.close();
				ConnectionDAO.closeConnection();
				// logger.info("database closed");

			} catch (SQLException e) {
				// logger.error(e.getMessage());
			}
		}
		if (songList.size() == 0)
			System.out.println("Artist not found");
		// logger.info("showing items by category");
		return songList;
	

	}
	@Override
	public void addUserDetailsToUserDB(User user) {
		PreparedStatement preparedstatement=null;
		Connection connection=null;

		connection=ConnectionDAO.openConnection();
		
		try {
			preparedstatement=connection.prepareStatement("insert into Users values (?,?)");
			
			preparedstatement.setString(1, user.getUsername());
			preparedstatement.setString(2, user.getPassword());
			preparedstatement.execute();
			//logger.info("Inserted Sucessfully");
			
		} catch (SQLException e) {
			e.printStackTrace();
		//	logger.error(e.getMessage());
		}
		finally{
			if(preparedstatement!=null){
				try {
					preparedstatement.close();
					ConnectionDAO.closeConnection();
	//				
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}
		}
	}


	@Override
	public void addSongToDB(Song song) {
		PreparedStatement preparedstatement=null;
		Connection connection=null;
		connection=ConnectionDAO.openConnection();
		
		try {
			preparedstatement=connection.prepareStatement("insert into Song(id,name,artist,language,movie,genre,filename) values (?,?,?,?,?,?,?)");
			preparedstatement.setInt(1,song.getId());
			preparedstatement.setString(2, song.getSongname());
			preparedstatement.setString(3, song.getArtist());
			preparedstatement.setString(4, song.getLanguage());
			preparedstatement.setString(5, song.getMovie());
			preparedstatement.setString(6, song.getGenre());
			preparedstatement.setString(7, song.getFile());
			
			preparedstatement.execute();
			//logger.info("Inserted Sucessfully");
			
		} catch (SQLException e) {
			e.printStackTrace();
		//	logger.error(e.getMessage());
		}
		finally{
			if(preparedstatement!=null){
				try {
					preparedstatement.close();
					ConnectionDAO.closeConnection();
	//				
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
			}
		}
	}



	@Override
	public void updateSongToDB(Song song) {
		PreparedStatement preparedstatement=null;
		Connection connection=null;
		try {
			
			connection = ConnectionDAO.openConnection();
		//	logger.info("connection established");
			String updateQuery =  "update Song set id=?  where name =? ";
		
			preparedstatement= connection.prepareStatement(updateQuery);
				//preparedstatement.setString(1, song.getFile());
				preparedstatement.setInt(2, song.getId());
				preparedstatement.setString(3, song.getSongname());
				preparedstatement.execute();
				//logger.info("updated the changes sucessfully");

				
			} catch (Exception e) {
			e.printStackTrace();
				//	logger.error(e.getMessage());
			}
			finally{
				try{
					if(preparedstatement != null){
					if(connection !=null){
						preparedstatement.close();
						ConnectionDAO.closeConnection();
					//	logger.info("database closed");
					}
				}
			}
				catch(Exception e){
				//	logger.error(e.getMessage());
				e.printStackTrace();
				}}}
			
			
		
		
	@Override
	public void deleteSongFromDB(Song song) {
		PreparedStatement preparedstatement=null;
		Connection connection=null;
		try {
			
			connection = ConnectionDAO.openConnection();
		//	logger.info("connection established");
			String deleteQuery =  "Delete from Song where name =? ";
			

			preparedstatement= connection.prepareStatement(deleteQuery);
			preparedstatement.setString(1,song.getSongname());
			
			preparedstatement.executeUpdate();
			
				
			} catch (Exception e) {
			e.printStackTrace();
				//	logger.error(e.getMessage());
			}
			finally{
				try{
					if(preparedstatement != null){
					if(connection !=null){
						preparedstatement.close();
						ConnectionDAO.closeConnection();
					//	logger.info("database closed");
					}
				}
			}
				catch(Exception e){
				//	logger.error(e.getMessage());
				e.printStackTrace();
				}}}
	
	@Override

	public boolean validateSapeMusicDAO(String username, String password) {
		
		PreparedStatement preparedstatement=null;
		//Connection connection=null;

boolean status=false;
		Connection con=ConnectionDAO.openConnection();
		
		try {
			preparedstatement=con.prepareStatement("select * from users where name=? and password=?");
			preparedstatement.setString(1, username);
			preparedstatement.setString(2, password);
			ResultSet rs=preparedstatement.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(preparedstatement!=null)
				preparedstatement.close();
				ConnectionDAO.closeConnection();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(status){
			return true;
		}else{
			return false;
		}

	}

	/*@Override

	public boolean validateCategory(String category) {
		
		PreparedStatement preparedstatement=null;
		//Connection connection=null;

boolean status=false;
		Connection con=ConnectionDAO.openConnection();
		
		try {
			preparedstatement=con.prepareStatement("select * from song where genre=? ");
			preparedstatement.setString(1, genre);
			
			ResultSet rs=preparedstatement.executeQuery();
			status = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				if(preparedstatement!=null)
				preparedstatement.close();
				ConnectionDAO.closeConnection();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(status){
			return true;
		}else{
			return false;
		}

	}
*/
}
