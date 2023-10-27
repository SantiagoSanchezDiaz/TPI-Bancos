package dao;

import java.util.ArrayList;
import entidades.Administrador;

public interface DaoAdministradores {

	public boolean agregarAdministrador(Administrador adm);
	public boolean modificarAdministrador(Administrador adm);
	public boolean eliminarAdministrador(String UsuarioAdm);
	public ArrayList<Administrador> listarAdministrador();
	
}
