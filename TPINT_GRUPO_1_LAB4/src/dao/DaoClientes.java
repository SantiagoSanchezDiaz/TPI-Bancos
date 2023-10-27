package dao;

import java.util.ArrayList;
import entidades.Cliente;

public interface DaoClientes {

	public boolean agregarCliente(Cliente cli);
	public boolean modificarCliente(Cliente cli);
	public boolean eliminarCliente(String DNI);
	public ArrayList<Cliente> listarClientes();
	public ArrayList<Cliente> filtrarClientes(Cliente cli);
	
}
