package dao;

import java.util.ArrayList;
import entidades.Movimiento;

public interface DaoMovimientos {

	public boolean agregarMovimiento(Movimiento mov);
	public ArrayList<Movimiento> listarMovimientos();
	public ArrayList<Movimiento> filtrarMovimientos(Movimiento mov);
}
