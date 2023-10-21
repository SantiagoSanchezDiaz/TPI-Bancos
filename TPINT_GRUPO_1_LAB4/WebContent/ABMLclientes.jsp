<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABML Clientes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
  
</style>
</head>

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a href="PantallaInicioAdmin.jsp">Home</a></li>
			<li class="active"><a href="ABMLclientes.jsp">ABML Clientes</a></li>
			<li><a href="ABMLcuentas.jsp">ABML Cuentas</a></li>
			<li><a href="AutorizacionPrestamos.jsp">Autorización de Prestamos</a></li>
			<li><a href="ReportesYEstadisticas.jsp">Reportes/Estadísticas</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
      		<li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario</a></li>
       		<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</a></li>
		</ul>
	</div>
</nav>

<div class="container" style="margin-top:100px;">
 	<h2>ABML Clientes</h2>
  
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#AltaCliente">ALTA CLIENTE</a></li>
		<li><a data-toggle="tab" href="#BajaCliente">BAJA CLIENTE</a></li>
		<li><a data-toggle="tab" href="#ModificarCliente">MODIFICAR CLINTE</a></li>
		<li><a data-toggle="tab" href="#ListarCliente">LISTAR CLIENTE</a></li>
	</ul>
		
	<div class="tab-content">
<!-- - - - PESTAÑA ALTA CLIENTE - - - -->
		<div id="AltaCliente" class="tab-pane fade in active">
			<h3>DAR DE ALTA UN CLIENTE</h3>
			<br>
			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-2 control-label">DNI</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteDNI" class="form-control" id="focusedInput" type="text" placeholder="Ingrese DNI" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" >CUIL</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteCUIT" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el CUIL" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Nombre</label>
					<div class="col-sm-10">
				 		<input name="txtAltaClienteNombre" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Nombre" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Apellido</label>
					<div class="col-sm-10">
				 		<input name="txtAltaClienteApellido" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Apellido" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Sexo</label>
					<div class="col-sm-10">
						<div class="dropdown">
							<button name="ddlAltaClienteSexo" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" >Seleccione el Sexo <span class="caret"></span></button>
						    <ul class="dropdown-menu" required>
						  		<li><a href="#">Hombre</a></li>
						      	<li><a href="#">Mujer</a></li>
							</ul>
						</div>
				 	</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Nacionalidad</label>
					<div class="col-sm-10">
				 		<input name="txtAltaClienteNacionalidad" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Nacionalidad" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Fecha de Nacimiento</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteFechaNacimiento" class="form-control" id="focusedInput" type="date" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Direccion</label>
					<div class="col-sm-10">
				  		<input name="txtAltaClienteDireccion" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Direccion" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Localidad</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteLocalidad" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Localidad" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Provincia</label>
					<div class="col-sm-10">
				 		<div class="dropdown">
							<button name="ddlAltaClienteProvincia" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" required>Seleccione una Provincia <span class="caret"></span></button>
							<ul class="dropdown-menu">
						     	<li><a href="#">Buenos Aires</a></li>
								<li><a href="#">CABA</a></li>
								<li><a href="#">Catamarca</a></li>
								<li><a href="#">Chaco</a></li>
								<li><a href="#">Chubut</a></li>
						      	<li><a href="#">Córdoba</a></li>
						      	<li><a href="#">Corrientes</a></li>
						      	<li><a href="#">Entre Ríos</a></li>
						      	<li><a href="#">Formosa</a></li>
						      	<li><a href="#">Jujuy</a></li>
						      	<li><a href="#">La Pampa</a></li>
						      	<li><a href="#">La Rioja</a></li>
						      	<li><a href="#">Mendoza</a></li>
						      	<li><a href="#">Misiones</a></li>
						      	<li><a href="#">Neuquén</a></li>
						      	<li><a href="#">Río Negro</a></li>
						      	<li><a href="#">Salta</a></li>
						      	<li><a href="#">San Juan</a></li>
						      	<li><a href="#">San Luis</a></li>
						      	<li><a href="#">Santa Cruz</a></li>
						      	<li><a href="#">Santa Fe</a></li>
						      	<li><a href="#">Santiago del Estero</a></li>
						      	<li><a href="#">Tierra del Fuego</a></li>
						      	<li><a href="#">Tucumán</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Correo Electronico</label>
				  	<div class="col-sm-10">
				     	<input name="txtAltaClienteCorreo" class="form-control" id="focusedInput" type="email" placeholder="Ingrese el Correo Electronico" required>
				   	</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Telefono</label>
				 	<div class="col-sm-10">
				    	<input name="txtAltaClienteTelefono" class="form-control" id="focusedInput" type="number" placeholder="Ingrese un Telfono" required>
				  	</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Usuario</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteUsuario" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Usuario" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Contraseña</label>
					<div class="col-sm-10">
						<input name="txtAltaClienteContrasena" class="form-control" id="focusedInput" type="password" placeholder="Ingrese la Contraseña" required>
					</div>
				</div>
				<br>
				<div class="text-center">
					<button name="btnAceptarAltaClienteUsuario" type="submit" class="btn btn-default">Aceptar</button>
					<br>
					<br>
				</div>
			</form>
		</div>
    
<!-- - - - PESTAÑA BAJA CLIENTE - - - -->

    	<div id="BajaCliente" class="tab-pane fade">
			<h3>DAR DE BAJA UN CLIENTE</h3>
			<br>
			<form class="form-horizontal">
				<div class="row">
  					<div class="col-sm-3">
						<label class="control-label">DNI del cliente que desea eliminar</label>
					</div>
  					<div class="col-sm-6">
						<input name="txtBajaClienteDNI" class="form-control" id="focusedInput" type="number" placeholder="Ingrese DNI" required>
					</div>
  					<div class="col-sm-3">
						<button name="btnBajaClienteAceptar" type="submit" class="btn btn-default">Aceptar</button>
					</div>
				</div>
			</form>
    	</div>
    
<!-- - - - PESTAÑA MODIFICAR CLIENTE - - - -->

    	<div id="ModificarCliente" class="tab-pane fade">
	 		<h3>MODIFICAR UN CLIENTE</h3>
	      	<br>
      		<form class="form-horizontal">
	      		<div class="row">
	  				<div class="col-sm-3">
						<label class="control-label">DNI del cliente que desea modificar</label>
					</div>
	  				<div class="col-sm-6">
						<input name="txtModificarClienteDNI" class="form-control" id="focusedInput" type="number" placeholder="Ingrese DNI" required>
					</div>
	  				<div class="col-sm-3">
						<button name="btnModificarClienteBuscar" type="submit" class="btn btn-default form-control col-sm-4" data-toggle="collapse" data-target="#demo">Buscar</button>
					</div>
				</div>
				<br>
				<br>
				<br>
				<div id="demo" class="collapse">
					<div class="form-group">
						<label class="col-sm-2 control-label">DNI</label>
				 		<div class="col-sm-10">
				  			<input name="txtModificarClienteDNI" class="form-control" id="focusedInput" type="text" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">CUIL</label>
						<div class="col-sm-10">
				  			<input name="txtModificarClienteCUIL" class="form-control" id="focusedInput" type="text" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Nombre</label>
						<div class="col-sm-10">
				    		<input name="txtModificarClienteNombre" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Nombre">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Apellido</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteApellido" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Apellido">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Sexo</label>
						<div class="col-sm-10">
							<div class="dropdown">
								<button name="ddlModificarClienteSexo" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Seleccione el Sexo <span class="caret"></span></button>
								<ul class="dropdown-menu">
									<li><a href="#">Hombre</a></li>
							    	<li><a href="#">Mujer</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Nacionalidad</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteNacionalidad" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Nacionalidad">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Fecha de Nacimiento</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteFechaNacimiento" class="form-control" id="focusedInput" type="date" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Direccion</label>
						<div class="col-sm-10">
				 			<input name="txtModificarClienteDireccion" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Direccion">
						</div>
					</div>
					<div class="form-group">
					<label class="col-sm-2 control-label">Localidad</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteLocalidad" class="form-control" id="focusedInput" type="text" placeholder="Ingrese la Localidad">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Provincia</label>
						<div class="col-sm-10">
				  			<div class="dropdown">
								<button name="ddlModificarClienteProvincia" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Seleccione una Provincia <span class="caret"></span></button>
						 		<ul class="dropdown-menu">
									<li><a href="#">Buenos Aires</a></li>
							      	<li><a href="#">CABA</a></li>
							      	<li><a href="#">Catamarca</a></li>
							      	<li><a href="#">Chaco</a></li>
							      	<li><a href="#">Chubut</a></li>
							      	<li><a href="#">Córdoba</a></li>
							      	<li><a href="#">Corrientes</a></li>
							      	<li><a href="#">Entre Ríos</a></li>
							      	<li><a href="#">Formosa</a></li>
							      	<li><a href="#">Jujuy</a></li>
							      	<li><a href="#">La Pampa</a></li>
							      	<li><a href="#">La Rioja</a></li>
							      	<li><a href="#">Mendoza</a></li>
							      	<li><a href="#">Misiones</a></li>
							      	<li><a href="#">Neuquén</a></li>
							      	<li><a href="#">Río Negro</a></li>
							      	<li><a href="#">Salta</a></li>
							      	<li><a href="#">San Juan</a></li>
							      	<li><a href="#">San Luis</a></li>
							      	<li><a href="#">Santa Cruz</a></li>
							      	<li><a href="#">Santa Fe</a></li>
							      	<li><a href="#">Santiago del Estero</a></li>
							      	<li><a href="#">Tierra del Fuego</a></li>
							      	<li><a href="#">Tucumán</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Correo Electronico</label>
						<div class="col-sm-10">
				 			<input name="txtModificarClienteCorreo" class="form-control" id="focusedInput" type="email" placeholder="Ingrese el Correo Electronico">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Telefono</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteTelefono" class="form-control" id="focusedInput" type="number" placeholder="Ingrese un Telefono">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Usuario</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteUsuario" class="form-control" id="focusedInput" type="text" disabled>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Contraseña</label>
						<div class="col-sm-10">
							<input name="txtModificarClienteContrasena" class="form-control" id="focusedInput" type="password" placeholder="Ingrese la Contraseña">
						</div>
					</div>
					<br>
					<div class="text-center">
						<button name="btnModificarClienteAceptar" type="submit" class="btn btn-default">Aceptar</button>
						<br>
						<br>
					</div>
				</div>
			</form>
    	</div>
    
<!-- - - - PESTAÑA LISTAR CLIENTE - - - -->

		<div id="ListarCliente" class="tab-pane fade">
   			<h3>LISTAR UN CLIENTE</h3>
 			<br>
			<form class="form-horizontal">
				<div class="row">
		  			<div class="col-md-3" style="text-align: right;">
						<label class="control-label" >Busqueda de Clientes por:</label>
					</div>
		  			<div class="col-md-2">
						<div class="dropdown">
							<button name="ddlListarClientePor" class="btn btn-default dropdown-toggle" style="width:100%" type="button" data-toggle="dropdown">Listar por: <span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="#">DNI</a></li>
								<li><a href="#">Apellido</a></li>
								<li><a href="#">Nacionalidad</a></li>
								<li><a href="#">Provincia</a></li>
							</ul>
				  		</div>
					</div>
		  			<div class="col-md-3" style="width:10%">
						<button name="btnListarClienteFiltrar" type="button" class="btn btn-default form-control">Filtrar</button>
					</div>
				</div>
				<br>
				<br>
				<div style="position: absolute; left:2%; right:2%">
					<table class="table table-bordered">
		    			<thead>
		      				<tr>
		        				<th>DNI</th>
						        <th>CUIT</th>
						        <th>Nombre</th>
						        <th>Apellido</th>
						        <th>Sexo</th>
						        <th>Nacionalidad</th>
						        <th>Fecha Nacimiento</th>
						        <th>Direccion</th>
						        <th>Localidad</th>
						        <th>Provincia</th>
						        <th>Correo</th>
						        <th>Telefono</th>
						        <th>Usuario</th>
						        <th>Contraseña</th>
		      				</tr>
					    </thead>
					    <tbody>
		    			</tbody>
		  			</table>
				</div>
			
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>