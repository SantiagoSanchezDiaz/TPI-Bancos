package dao;

import java.util.ArrayList;
import entidades.Prestamo;

public interface DaoPrestamos {

	public boolean agregarPrestamo(Prestamo pre);
	public boolean eliminarPrestamo(String DNI, String NumeroCuenta, String NumeroPrestamo);
	public ArrayList<Prestamo> listarPrestamos();
	public ArrayList<Prestamo> filtrarPrestamos(Prestamo pre);
}
