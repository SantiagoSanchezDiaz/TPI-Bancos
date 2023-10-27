package daoImpl;

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
	}

}
