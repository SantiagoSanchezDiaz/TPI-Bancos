package daoImpl;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import dao.DaoMovimientos;
import entidades.Movimiento;

public class DaoMovimientosImpl implements DaoMovimientos {

	private static final String listarTodo = "SELECT NumeroMovimiento_Mov, NumeroCuenta_Cue_Mov, DNI_Cli_Mov, CVU_Mov, Fecha_Mov, Detalle_Mov, Importe_Mov, TipoMovimiento_Mov, Estado_Mov FROM ADMINISTRADORES;";	

	
	public boolean agregarMovimiento(Movimiento mov) {
		Connection conexion = Conexion.getConexion().getSQLConexion();
	    CallableStatement cs = null;
	    boolean seInserto = false;
	    
	    try {
	        cs = (CallableStatement) conexion.prepareCall("{call insertarPrestamo(?,?,?,?,?,?,?,?,?)}");
	        cs.setString(1, mov.getNumeroMovimiento());
			cs.setString(2, mov.getNumeroCuenta());
			cs.setString(3, mov.getDNI());
			cs.setString(4, mov.getCVU());
			cs.setDate(5, (java.sql.Date) mov.getFecha());
			cs.setString(6, mov.getDetalle());
			cs.setFloat(7, mov.getImporte());
			cs.setString(8, mov.getTipoMovimiento());
			cs.setBoolean(9, mov.getEstado());

	        
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

	public ArrayList<Movimiento> listarMovimientos() {
		ArrayList<Movimiento> lista = new ArrayList<Movimiento>();
		PreparedStatement statement;
		ResultSet resultSet;
		Conexion conexion = Conexion.getConexion();
		try {
			statement = conexion.getSQLConexion().prepareStatement(listarTodo);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				lista.add(getMovimiento(resultSet));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}

	public ArrayList<Movimiento> filtrarMovimientos(Movimiento mov) {

		return null;
	}
	
	private Movimiento getMovimiento(ResultSet resultSet) throws SQLException {
		String numeroMovimiento = resultSet.getString("NumeroMovimiento");
		String numeroCuenta = resultSet.getString("NumeroCuenta");
		String dni = resultSet.getString("DNI");
		String cvu = resultSet.getString("CVU");
		Date fecha = resultSet.getDate("Fecha");
		String detalle = resultSet.getString("Detalle");
		Float importe = resultSet.getFloat("Importe");
		String tipoMovimiento = resultSet.getString("TipoMovimiento");
		boolean estado = resultSet.getBoolean("Estado");
		return new Movimiento(numeroMovimiento, numeroCuenta, dni, cvu, fecha, detalle, importe, tipoMovimiento, estado);
	}

}
