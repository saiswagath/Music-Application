package com.app.bean;

public class Song {
String songname, artist, language,genre,movie,file,image;
public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
}

public String getFile() {
	return file;
}

public void setFile(String file) {
	this.file = file;
}

int id;
public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getSongname() {
	return songname;
}

public void setSongname(String songname) {
	this.songname = songname;
}

public String getArtist() {
	return artist;
}

public void setArtist(String artist) {
	this.artist = artist;
}

public String getLanguage() {
	return language;
}

public void setLanguage(String language) {
	this.language = language;
}

public String getGenre() {
	return genre;
}

public void setGenre(String genre) {
	this.genre = genre;
}

public String getMovie() {
	return movie;
}

public void setMovie(String movie) {
	this.movie = movie;
}

@Override
public String toString() {
	return "Song [songname=" + songname + ", artist=" + artist + ", language=" + language + ", genre=" + genre
			+ ", movie=" + movie + ", id=" + id + "]";
}

}
