package entidades;

import java.util.Date;

public class Cliente{
	private String DNI;
	private String Cuit;
	private String Nombre;
	private String Apellido;
	private String Sexo;
	private String Nacionalidad;
	private Date FechaNacimiento;
	private String Direccion;
	private String Localidad;
	private String Provincia;
	private String Correo;
	private String Telefono;
	private String Usuario;
	private String Contraseña;
	private boolean Estado;
	
	/// CONSTRUCTOR
	public Cliente(String dNI, String cuit, String nombre, String apellido, String sexo, String nacionalidad,
			Date fechaNacimiento, String direccion, String localidad, String provincia, String correo, String telefono,
			String usuario, String contraseña, boolean estado) {
		DNI = dNI;
		Cuit = cuit;
		Nombre = nombre;
		Apellido = apellido;
		Sexo = sexo;
		Nacionalidad = nacionalidad;
		FechaNacimiento = fechaNacimiento;
		Direccion = direccion;
		Localidad = localidad;
		Provincia = provincia;
		Correo = correo;
		Telefono = telefono;
		Usuario = usuario;
		Contraseña = contraseña;
		Estado = estado;
	}

	/// GETTERS Y SETTERS
	public String getDNI() {
		return DNI;
	}

	public void setDNI(String dNI) {
		DNI = dNI;
	}

	public String getCuit() {
		return Cuit;
	}

	public void setCuit(String cuit) {
		Cuit = cuit;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public String getApellido() {
		return Apellido;
	}

	public void setApellido(String apellido) {
		Apellido = apellido;
	}

	public String getSexo() {
		return Sexo;
	}

	public void setSexo(String sexo) {
		Sexo = sexo;
	}

	public String getNacionalidad() {
		return Nacionalidad;
	}

	public void setNacionalidad(String nacionalidad) {
		Nacionalidad = nacionalidad;
	}

	public Date getFechaNacimiento() {
		return FechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		FechaNacimiento = fechaNacimiento;
	}

	public String getDireccion() {
		return Direccion;
	}

	public void setDireccion(String direccion) {
		Direccion = direccion;
	}

	public String getLocalidad() {
		return Localidad;
	}

	public void setLocalidad(String localidad) {
		Localidad = localidad;
	}

	public String getProvincia() {
		return Provincia;
	}

	public void setProvincia(String provincia) {
		Provincia = provincia;
	}

	public String getCorreo() {
		return Correo;
	}

	public void setCorreo(String correo) {
		Correo = correo;
	}

	public String getTelefono() {
		return Telefono;
	}

	public void setTelefono(String telefono) {
		Telefono = telefono;
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

	public boolean isEstado() {
		return Estado;
	}

	public void setEstado(boolean estado) {
		Estado = estado;
	}
	
	
	
	
	
}
