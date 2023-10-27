package entidades;

import java.util.Date;

public class Cuenta {
	private String NumeroCuenta;
	private String DNI;
	private	Date Fecha;
	private String CVU;
	private String Alias;
	private Float Saldo;
	private boolean Estado;
	
	///CONSTRUCTOR
	
	public Cuenta(String numeroCuenta, String dNI, Date fecha, String cVU, String alias, Float saldo, boolean estado) {
		super();
		NumeroCuenta = numeroCuenta;
		DNI = dNI;
		Fecha = fecha;
		CVU = cVU;
		Alias = alias;
		Saldo = saldo;
		Estado = estado;
	}

	///GETTERS Y SETTERS
	
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

	public Date getFecha() {
		return Fecha;
	}

	public void setFecha(Date fecha) {
		Fecha = fecha;
	}

	public String getCVU() {
		return CVU;
	}

	public void setCVU(String cVU) {
		CVU = cVU;
	}

	public String getAlias() {
		return Alias;
	}

	public void setAlias(String alias) {
		Alias = alias;
	}

	public Float getSaldo() {
		return Saldo;
	}

	public void setSaldo(Float saldo) {
		Saldo = saldo;
	}

	public boolean isEstado() {
		return Estado;
	}

	public void setEstado(boolean estado) {
		Estado = estado;
	}
	
	
	
	
}
