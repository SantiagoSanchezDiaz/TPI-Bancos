package entidades;

public class Administrador {
	private String Codigo;
	private String Usuario;
	private String Contrase�a;
	private boolean Estado;
	
	/// CONSTRUCTOR
	
	public Administrador(String codigo, String usuario, String contrase�a, boolean estado) {
		super();
		Codigo = codigo;
		Usuario = usuario;
		Contrase�a = contrase�a;
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
	public String getContrase�a() {
		return Contrase�a;
	}
	public void setContrase�a(String contrase�a) {
		Contrase�a = contrase�a;
	}
	public boolean isEstado() {
		return Estado;
	}
	public void setEstado(boolean estado) {
		Estado = estado;
	}
	
	
}
