package daoImpl;

<<<<<<< HEAD
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.CallableStatement;

import dao.DaoCuentas;
import entidades.Cliente;
import entidades.Cuenta;

public class DaoCuentasImpl implements DaoCuentas {
	
	private static final String listarTodo = "SELECT NUMEROCUENTA_CUE, DNI_CLI_CUE, FECHACREACION_CUE, TIPOCUENTA_CUE, CVU_CUE, ALIAS_CUE, SALDO_CUE, ESTADO_CUE FROM CUENTAS;";
	

	public boolean agregarCuenta(Cuenta cue) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seAgrego = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarCuenta(?, ?, ?, ?, ?, ?, ?)}");
	    	cs.setString(1, cue.getNumeroCuenta());
	    	cs.setString(2, cue.getDNI());
	    	cs.setDate(3, (Date) cue.getFecha());
	    	cs.setString(4, cue.getTipoCuenta());
	    	cs.setString(5, cue.getCVU());
	    	cs.setString(6, cue.getAlias());
	    	cs.setFloat(7, cue.getSaldo());
	    	
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

	public boolean modificarCuenta(Cuenta cue) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seModifico = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call modificarCuenta(?, ?, ?, ?)}");
	    	cs.setString(1, cue.getNumeroCuenta());
	    	cs.setString(2, cue.getDNI());
	    	cs.setString(4, cue.getTipoCuenta());
	    	cs.setString(6, cue.getAlias());
        
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

	public boolean eliminarCuenta(String DNI, String NumeroCuenta) {
	    Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seElimino = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call eliminarCuenta(?, ?)}");
	        cs.setString(1, NumeroCuenta);
	        cs.setString(2, DNI);
	        
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


	public ArrayList<Cuenta> listarCuentas() {
		ArrayList<Cuenta> lista = new ArrayList<Cuenta>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getCuenta(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	public ArrayList<Cuenta> filtrarClientes(Cuenta cue) {
		ArrayList<Cuenta> listaFiltrada = new ArrayList<Cuenta>();
		return listaFiltrada;
	}
	
	private Cuenta getCuenta(ResultSet resultSet) throws SQLException {
		String numeroCuenta = resultSet.getString("NumeroCuenta");
		String dni = resultSet.getString("DNI");
		Date fecha = resultSet.getDate("Fecha");
		String cvu = resultSet.getString("CVU");
		String alias = resultSet.getString("Alias");
		Float saldo = resultSet.getFloat("Saldo");
		String tipoCuenta = resultSet.getString("TipoCuenta");
		boolean estado = resultSet.getBoolean("Estado");

		return new Cuenta(numeroCuenta, dni, fecha, cvu, alias, tipoCuenta, saldo, estado);
=======
import java.util.ArrayList;
import dao.DaoCuentas;
import entidades.Cuenta;

public class DaoCuentasImpl implements DaoCuentas {

	public boolean agregarCuenta(Cuenta cue) {
		
		return false;
	}

	public boolean modificarCuenta(Cuenta cue) {
		
		return false;
	}

	public boolean eliminarCuenta(String DNI, String NumeroCuenta) {
		
		return false;
	}

	public ArrayList<Cuenta> listarCuentas() {
		ArrayList<Cuenta> lista = new ArrayList<Cuenta>();
		return lista;
	}

	public ArrayList<Cuenta> filtrarClientes(Cuenta cue) {
		ArrayList<Cuenta> listaFiltrada = new ArrayList<Cuenta>();
		return listaFiltrada;
>>>>>>> refs/heads/kilian
	}

}
