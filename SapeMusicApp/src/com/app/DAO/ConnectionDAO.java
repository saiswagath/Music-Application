package com.app.DAO;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionDAO {
	static Connection con=null;
	
	public static Connection openConnection() {
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@10.150.222.77:1521:xe";
		String username = "ratul";
		String password = "ratul";
	  
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return con;
	}

	public static void closeConnection() {

		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			//logger.error(e.getMessage());
		}
	}
}
