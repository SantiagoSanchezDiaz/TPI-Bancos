package daoImpl;

<<<<<<< HEAD
import java.util.ArrayList;
import dao.DaoPrestamos;
import entidades.Prestamo;

public class DaoPrestamosImpl implements DaoPrestamos {

	public boolean agregarPrestamo(Prestamo pre) {
		
		return false;
	}

	public boolean eliminarPrestamo(String DNI, String NumeroCuenta, String NumeroPrestamo) {
		
		return false;
	}

	public ArrayList<Prestamo> listarPrestamos() {
		ArrayList<Prestamo> listaFiltrada = new ArrayList<Prestamo>();
		
		return listaFiltrada;
	}

	public ArrayList<Prestamo> filtrarPrestamos(Prestamo pre) {
		ArrayList<Prestamo> listaFiltrada = new ArrayList<Prestamo>();
		
		return listaFiltrada;
	}
=======
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoPrestamos;
import entidades.Prestamo;

public class DaoPrestamosImpl implements DaoPrestamos {

	private static final String listarTodo = "SELECT NumeroPrestamo_Pre, NumeroCuenta_Cue_Pre, DNI_Cli_Pre, Fecha_Pre, ImportePedido_Pre, ImporteAPagar_Pre, PlazoDePago_Pre, MontoMensual_Pre, CantidadCuotas_Pre, CantidadCuotasPagadas_Pre, Estado_Pre FROM ADMINISTRADORES;";	

	public boolean agregarPrestamo(Prestamo pre) {
		Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seInserto = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarPrestamo(?,?,?,?,?,?,?,?,?,?,?)}");
	        cs.setString(1, pre.getNumeroPrestamo());
			cs.setString(2, pre.getNumeroCuenta());
			cs.setString(3, pre.getDNI());
			cs.setDate(4, (Date) pre.getFecha());
			cs.setFloat(5, pre.getImportePedido());
			cs.setFloat(6, pre.getImporteAPagar());
			cs.setDate(7, (Date) pre.getPlazoDePago());
			cs.setFloat(8, pre.getMontoMensual());
			cs.setInt(9, pre.getCantidadCuotas());
			cs.setInt(10, pre.getCantidadCuotasPagadas());
			cs.setBoolean(11, pre.getEstado());
	        
	        if (cs.executeUpdate() > 0) {
	        	conexion.commit();
	        	seInserto = true;
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
	    return seInserto;
	}
	
	public boolean eliminarPrestamo(String NumeroPrestamo,String NumeroCuenta, String DNI) {
		Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seElimino = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call eliminarPrestamo(?,?,?)}");
	        cs.setString(1, NumeroPrestamo);
	        cs.setString(2, NumeroCuenta);
	        cs.setString(3, DNI);
	        
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

	public ArrayList<Prestamo> listarPrestamos() {
		ArrayList<Prestamo> lista = new ArrayList<Prestamo>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getPrestamo(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	public ArrayList<Prestamo> filtrarPrestamos(Prestamo pre) {
		ArrayList<Prestamo> listaFiltrada = new ArrayList<Prestamo>();
		
		return listaFiltrada;
	}
	
	private Prestamo getPrestamo(ResultSet resultSet) throws SQLException {
		String NumeroPrestamo = resultSet.getString("NumeroPrestamo");
		String NumeroCuenta = resultSet.getString("NumeroCuenta");
		String DNI = resultSet.getString("DNI");
		Date fecha = resultSet.getDate("Fecha");
		Float importePedido = resultSet.getFloat("ImportePedido");
		Float importeAPagar = resultSet.getFloat("ImporteAPagar");
		Date plazoDePago = resultSet.getDate("PlazoDePago");
		Float montoMensual = resultSet.getFloat("MontoMensual");
		int cantidadCuotas = resultSet.getInt("CantidadCuotas");
		int cantidadCuotasPagadas = resultSet.getInt("CantidadCuotasPagadas");
		boolean estado = resultSet.getBoolean("Estado");
		return new Prestamo(NumeroPrestamo, NumeroCuenta, DNI, fecha, importePedido, importeAPagar, plazoDePago, montoMensual, cantidadCuotas, cantidadCuotasPagadas, estado);
	}

>>>>>>> refs/heads/kilian
}
