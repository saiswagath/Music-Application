package com.app.bean;

public class User {
String username,password;
int userid;
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
@Override
public String toString() {
	return "User [username=" + username + ", password=" + password + ", userid=" + userid + "]";
}



}
