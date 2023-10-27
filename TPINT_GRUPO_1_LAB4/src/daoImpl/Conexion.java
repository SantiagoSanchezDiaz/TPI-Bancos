package daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
<<<<<<< HEAD
	
	public static Conexion instancia;
	private Connection connection;

=======
	public static Conexion instancia;
	private Connection connection;
	// Hola, no lo pidan
>>>>>>> refs/heads/kilian
	private Conexion()
	{
		try
		{
			this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/SegurosGroup","root","root");
			this.connection.setAutoCommit(false);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Conexion getConexion()   
	{								
		if(instancia == null)
		{
			instancia = new Conexion();
		}
		return instancia;
	}

	public Connection getSQLConexion() 
	{
		return this.connection;
	}
	
	public void cerrarConexion()
	{
		try 
		{
			this.connection.close();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		instancia = null;
	}
}
