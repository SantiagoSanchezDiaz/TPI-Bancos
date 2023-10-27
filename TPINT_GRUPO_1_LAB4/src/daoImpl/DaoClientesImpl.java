package daoImpl;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.CallableStatement;

import dao.DaoClientes;
import entidades.Cliente;

public class DaoClientesImpl implements DaoClientes {

	private static final String listarTodo = "SELECT DNI_CLI, CUIT_CLI, NOMBRE_CLI, APELLIDO_CLI, SEXO_CLI, NACIONALIDAD_CLI, FECHANACIMIENTO_CLI, DIRECCION_CLI, LOCALIDAD_CLI, PROVINCIA_CLI, CORREO_CLI, TELEFONO_CLI, USUARIO_CLI, CONTRASENA_CLI, ESTADO_CLI FROM CLIENTES;";
	
	public boolean agregarCliente(Cliente cli) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seAgrego = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarCliente(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}");
	    	cs.setString(1, cli.getDNI());
	    	cs.setString(2, cli.getCuit());
	    	cs.setString(3, cli.getNombre());
	    	cs.setString(4, cli.getApellido());
	    	cs.setString(5, cli.getSexo());
	    	cs.setString(6, cli.getNacionalidad());
	    	cs.setDate(7, (Date) cli.getFechaNacimiento());
	    	cs.setString(8, cli.getDireccion());
	    	cs.setString(9, cli.getLocalidad());
	    	cs.setString(10, cli.getProvincia());
	    	cs.setString(11, cli.getCorreo());
	    	cs.setString(12, cli.getTelefono());
	    	cs.setString(13, cli.getUsuario());
	    	cs.setString(14, cli.getContrasenia());
	        
	        if (cs.executeUpdate() > 0) {
	        	//conexion.commit();
	            seAgrego = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            conexion.rollback();
	        } catch (SQLException e1) {
	            e1.printStackTrace();
	        }
	    } finally {
	        try {
	            if (cs != null) {
	                cs.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return seAgrego;
	}
	

	public boolean modificarCliente(Cliente cli){
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seModifico = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call modificarCliente(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}");
	    	cs.setString(1, cli.getDNI());
	    	cs.setString(2, cli.getCuit());
	    	cs.setString(3, cli.getNombre());
	    	cs.setString(4, cli.getApellido());
	    	cs.setString(5, cli.getSexo());
	    	cs.setString(6, cli.getNacionalidad());
	    	cs.setDate(7,(Date) cli.getFechaNacimiento());
	    	cs.setString(8, cli.getDireccion());
	    	cs.setString(9, cli.getLocalidad());
	    	cs.setString(10, cli.getProvincia());
	    	cs.setString(11, cli.getCorreo());
	    	cs.setString(12, cli.getTelefono());
	    	cs.setString(13, cli.getUsuario());
	    	cs.setString(14, cli.getContrasenia());
	        
	        if (cs.executeUpdate() > 0) {
	        	//conexion.commit();
	            seModifico = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            conexion.rollback();
	        } catch (SQLException e1) {
	            e1.printStackTrace();
	        }
	    } finally {
	        try {
	            if (cs != null) {
	                cs.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return seModifico;
	}
	
	public boolean eliminarCliente(String DNI){	
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seElimino = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call eliminarCliente(?)}");
	        cs.setString(1, DNI);
	        
	        if (cs.executeUpdate() > 0) {
	        	conexion.commit();
	            seElimino = true;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        try {
	            conexion.rollback();
	        } catch (SQLException e1) {
	            e1.printStackTrace();
	        }
	    } finally {
	        try {
	            if (cs != null) {
	                cs.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    return seElimino;
	}
	
	public ArrayList<Cliente> listarClientes(){
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getCliente(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
	
		public ArrayList<Cliente> filtrarClientes(Cliente cli) {
		ArrayList<Cliente> listaFiltrada = new ArrayList<Cliente>();
		//DNI, APELLIDO, NACIONALIDAD, PROVINCIA
		return listaFiltrada;
	}
		
	private Cliente getCliente(ResultSet resultSet) throws SQLException {
		String dni = resultSet.getString("DNI");
		String cuit = resultSet.getString("Cuit");
		String nombre = resultSet.getString("Nombre");
		String apellido = resultSet.getString("Apellido");
		String sexo = resultSet.getString("Sexo");
		String nacionalidad = resultSet.getString("Nacionalidad");
		Date fechaNacimiento = resultSet.getDate("FechaNacimiento");
		String direccion = resultSet.getString("Direccion");
		String localidad = resultSet.getString("Localidad");
		String provincia = resultSet.getString("Provincia");
		String correo = resultSet.getString("Correo");
		String telefono = resultSet.getString("Telefono");
		String usuario = resultSet.getString("Usuario");
		String contrasenia = resultSet.getString("Contrasenia");
		boolean estado = resultSet.getBoolean("Estado");
		return new Cliente(dni,cuit,nombre,apellido,sexo,nacionalidad,fechaNacimiento,direccion,localidad,provincia,correo,telefono,usuario,contrasenia,estado);
	}

=======
import java.util.ArrayList;
import dao.DaoClientes;
import entidades.Cliente;

public class DaoClientesImpl implements DaoClientes {

	public boolean agregarCliente(Cliente cli) {
		
		return false;
	}

	public boolean modificarCliente(Cliente cli) {
		
		return false;
	}

	public boolean eliminarCliente(String DNI) {
		
		return false;
	}

	public ArrayList<Cliente> listarClientes() {
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		
		return lista;
	}

	public ArrayList<Cliente> filtrarClientes(Cliente cli) {
		ArrayList<Cliente> listaFiltrada = new ArrayList<Cliente>();
		
		return listaFiltrada;
	}
>>>>>>> refs/heads/kilian

}
