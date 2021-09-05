package br.com.mayki.daily_task.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

	public static Connection recupera() throws SQLException, ClassNotFoundException {
		// DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection c = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/prova_remsoft?useTimezone=true&serveTimezone=UTC", "root", "");
		c.setAutoCommit(false);

		return c;
	}

}
