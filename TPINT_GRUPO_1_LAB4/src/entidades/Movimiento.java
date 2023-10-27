package entidades;

import java.util.Date;

public class Movimiento {
	private String NumeroMovimiento;
	private String NumeroCuenta;
	private String DNI;
	private	String CVU;
	private Date Fecha;
	private	String Detalle;
	private Float Importe;
	private String TipoMovimiento;
	private boolean Estado;
	
	/// CONSTRUCTOR
	
	public Movimiento(String numeroMovimiento, String numeroCuenta, String dNI, String cVU, Date fecha, String detalle,
			Float importe, String tipoMovimiento, boolean estado) {
		super();
		NumeroMovimiento = numeroMovimiento;
		NumeroCuenta = numeroCuenta;
		DNI = dNI;
		CVU = cVU;
		Fecha = fecha;
		Detalle = detalle;
		Importe = importe;
		TipoMovimiento = tipoMovimiento;
		Estado = estado;
	}
	
	///GETTERS Y SETTERS 
	public String getNumeroMovimiento() {
		return NumeroMovimiento;
	}
	public void setNumeroMovimiento(String numeroMovimiento) {
		NumeroMovimiento = numeroMovimiento;
	}
	public String getNumeroCuenta() {
		return NumeroCuenta;
	}
	public void setNumeroCuenta(String numeroCuenta) {
		NumeroCuenta = numeroCuenta;
	}
	public String getDNI() {
		return DNI;
	}
	public void setDNI(String dNI) {
		DNI = dNI;
	}
	public String getCVU() {
		return CVU;
	}
	public void setCVU(String cVU) {
		CVU = cVU;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	public String getDetalle() {
		return Detalle;
	}
	public void setDetalle(String detalle) {
		Detalle = detalle;
	}
	public Float getImporte() {
		return Importe;
	}
	public void setImporte(Float importe) {
		Importe = importe;
	}
	public String getTipoMovimiento() {
		return TipoMovimiento;
	}
	public void setTipoMovimiento(String tipoMovimiento) {
		TipoMovimiento = tipoMovimiento;
	}
	public boolean isEstado() {
		return Estado;
	}
	public void setEstado(boolean estado) {
		Estado = estado;
	}
	
	
	
}
