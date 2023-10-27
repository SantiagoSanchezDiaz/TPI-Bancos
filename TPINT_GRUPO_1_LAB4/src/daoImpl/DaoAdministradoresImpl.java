package daoImpl;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.CallableStatement;
import dao.DaoAdministradores;
import entidades.Administrador;

public class DaoAdministradoresImpl implements DaoAdministradores {
	
	
	private static final String listarTodo = "SELECT CODIGOADMIN_ADM, USUARIO_ADM, CONTRASENA_ADM, ESTADO_ADM FROM ADMINISTRADORES;";
	
	public boolean agregarAdministrador(Administrador adm) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seAgrego = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarAdministrador(?, ?, ?)}");
	        cs.setString(1, adm.getCodigo());
	        cs.setString(2, adm.getUsuario());
	        cs.setString(3, adm.getContrasenia());
	        
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
	
	
	public boolean modificarAdministrador(Administrador adm) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seModifico = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call modificarAdministrador(?, ?, ?)}");
	        cs.setString(1, adm.getCodigo());
	        cs.setString(2, adm.getUsuario());
	        cs.setString(3, adm.getContrasenia());
	        
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
	
	public boolean eliminarAdministrador(String UsuarioAdm){	
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seElimino = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call eliminarAdministrador(?)}");
	        cs.setString(1, UsuarioAdm);
	        
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
	
	public ArrayList<Administrador> listarAdministrador(){
		ArrayList<Administrador> lista = new ArrayList<Administrador>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getAdministrador(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	private Administrador getAdministrador(ResultSet resultSet) throws SQLException {
		String codigo = resultSet.getString("Codigo");
		String usuario = resultSet.getString("Usuario");
		String contrasenia = resultSet.getString("Contrasenia");
		Boolean estado = resultSet.getBoolean("Estado");
		return new Administrador(codigo, usuario, contrasenia, estado);
	}

}

=======
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoAdministradores;
import entidades.Administrador;

public class DaoAdministradoresImpl implements DaoAdministradores {

	private static final String agregar = "INSERT INTO ADMINISTRADORES (CODIGOADMIN_ADM, USUARIO_ADM, CONTRASENA_ADM, ESTADO_ADM) VALUES (?,?,?,?);";
	private static final String listarTodo = "SELECT CODIGOADMIN_ADM, USUARIO_ADM, CONTRASENA_ADM, ESTADO_ADM FROM ADMINISTRADORES;";
	
	public boolean agregarAdministrador(Administrador adm) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean seInserto = false;
		try {
			statement = conexion.prepareStatement(agregar);
			statement.setString(1, adm.getCodigo());
			statement.setString(2, adm.getUsuario());
			statement.setString(3, adm.getContrasenia());
			statement.setBoolean(4, adm.getEstado());
			if (statement.executeUpdate() > 0) {
				//conexion.commit();
				seInserto = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conexion.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return seInserto;
	}
	
	public boolean modificarAdministrador(Administrador adm) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seModifico = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarAdministrador(?, ?, ?)}");
	        cs.setString(1, adm.getCodigo());
	        cs.setString(2, adm.getUsuario());
	        cs.setString(3, adm.getContrasenia());
	        
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
	
	
	public boolean modificarAdministrador(Administrador adm) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seModifico = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call modificarAdministrador(?, ?, ?)}");
	        cs.setString(1, adm.getCodigo());
	        cs.setString(2, adm.getUsuario());
	        cs.setString(3, adm.getContrasenia());
	        
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
	
	public boolean eliminarAdministrador(String UsuarioAdm){	
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seElimino = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call eliminarAdministrador(?)}");
	        cs.setString(1, UsuarioAdm);
	        
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
	
	public ArrayList<Administrador> listarAdministrador(){
		ArrayList<Administrador> lista = new ArrayList<Administrador>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getAdministrador(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	private Administrador getAdministrador(ResultSet resultSet) throws SQLException {
		String codigo = resultSet.getString("Codigo");
		String usuario = resultSet.getString("Usuario");
		String contrasenia = resultSet.getString("Contrasenia");
		Boolean estado = resultSet.getBoolean("Estado");
		return new Administrador(codigo, usuario, contrasenia, estado);
	}
}
>>>>>>> refs/heads/kilian
