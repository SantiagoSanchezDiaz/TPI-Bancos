package entidades;

public class Administrador {
	private String Codigo;
	private String Usuario;
	private String Contraseña;
	private boolean Estado;
	
	/// CONSTRUCTOR
	
	public Administrador(String codigo, String usuario, String contraseña, boolean estado) {
		Codigo = codigo;
		Usuario = usuario;
		Contraseña = contraseña;
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
	
	public String getContraseña() {
		return Contraseña;
	}
	
	public void setContraseña(String contraseña) {
		Contraseña = contraseña;
	}
	
	public boolean getEstado() {
		return Estado;
	}
	
	public void setEstado(boolean estado) {
		Estado = estado;
	}
}
