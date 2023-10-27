package entidades;

import java.util.Date;

public class Prestamo {
	private String NumeroPrestamo;
	private String NumeroCuenta;
	private	String DNI;
	private Date Fecha;
	private Float ImportePedido;
	private Float ImporteAPagar;
	private Date PlazoDePago;
	private Float MontoMensual;
	private int CantidadCuotas;
	private int CantidadCuotasPagadas;
	private boolean Estado;
	
	///CONSTRUCTOR
	
	public Prestamo(String numeroPrestamo, String numeroCuenta, String dNI, Date fecha, Float importePedido,
			Float importeAPagar, Date plazoDePago, Float montoMensual, int cantidadCuotas, int cantidadCuotasPagadas,
			boolean estado) {
		NumeroPrestamo = numeroPrestamo;
		NumeroCuenta = numeroCuenta;
		DNI = dNI;
		Fecha = fecha;
		ImportePedido = importePedido;
		ImporteAPagar = importeAPagar;
		PlazoDePago = plazoDePago;
		MontoMensual = montoMensual;
		CantidadCuotas = cantidadCuotas;
		CantidadCuotasPagadas = cantidadCuotasPagadas;
		Estado = estado;
	}

	///GETTERS Y SETTERS
	
	public String getNumeroPrestamo() {
		return NumeroPrestamo;
	}

	public void setNumeroPrestamo(String numeroPrestamo) {
		NumeroPrestamo = numeroPrestamo;
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

	public Date getFecha() {
		return Fecha;
	}

	public void setFecha(Date fecha) {
		Fecha = fecha;
	}

	public Float getImportePedido() {
		return ImportePedido;
	}

	public void setImportePedido(Float importePedido) {
		ImportePedido = importePedido;
	}

	public Float getImporteAPagar() {
		return ImporteAPagar;
	}

	public void setImporteAPagar(Float importeAPagar) {
		ImporteAPagar = importeAPagar;
	}

	public Date getPlazoDePago() {
		return PlazoDePago;
	}

	public void setPlazoDePago(Date plazoDePago) {
		PlazoDePago = plazoDePago;
	}

	public Float getMontoMensual() {
		return MontoMensual;
	}

	public void setMontoMensual(Float montoMensual) {
		MontoMensual = montoMensual;
	}

	public int getCantidadCuotas() {
		return CantidadCuotas;
	}

	public void setCantidadCuotas(int cantidadCuotas) {
		CantidadCuotas = cantidadCuotas;
	}

	public int getCantidadCuotasPagadas() {
		return CantidadCuotasPagadas;
	}

	public void setCantidadCuotasPagadas(int cantidadCuotasPagadas) {
		CantidadCuotasPagadas = cantidadCuotasPagadas;
	}

<<<<<<< HEAD
	public boolean isEstado() {
=======
	public boolean getEstado() {
>>>>>>> refs/heads/kilian
		return Estado;
	}

	public void setEstado(boolean estado) {
		Estado = estado;
	}
}
