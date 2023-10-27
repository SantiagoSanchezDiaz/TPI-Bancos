package dao;

import java.util.ArrayList;
import entidades.Cuenta;

public interface DaoCuentas {

	public boolean agregarCuenta(Cuenta cue);
	public boolean modificarCuenta(Cuenta cue);
	public boolean eliminarCuenta(String DNI, String NumeroCuenta);
	public ArrayList<Cuenta> listarCuentas();
	public ArrayList<Cuenta> filtrarClientes(Cuenta cue);
}
