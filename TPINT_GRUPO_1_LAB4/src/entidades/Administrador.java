package entidades;

public class Administrador {
	private String Codigo;
	private String Usuario;
	private String Contrasenia;
	private boolean Estado;
	
	/// CONSTRUCTOR
	
	public Administrador(String codigo, String usuario, String contrasenia, boolean estado) {
		Codigo = codigo;
		Usuario = usuario;
		Contrasenia = contrasenia;
		Estado = estado;
	}
	
	/// GETTERS Y SETTERS 
	public String getCodigo() {
		return Codigo;
	}
	
	public void setCodigo(String codigo) {
		Codigo = codigo;
	}
	
	public String getUsuario() {
		return Usuario;
	}
	
	public void setUsuario(String usuario) {
		Usuario = usuario;
	}
	
	public String getContrasenia() {
		return Contrasenia;
	}
	
<<<<<<< HEAD
	public void setContrasenia(String contrasenia) {
=======
	public void setcontrasenia(String contrasenia) {
>>>>>>> refs/heads/kilian
		Contrasenia = contrasenia;
	}
	
	public boolean getEstado() {
		return Estado;
	}
	
	public void setEstado(boolean estado) {
		Estado = estado;
	}
}
