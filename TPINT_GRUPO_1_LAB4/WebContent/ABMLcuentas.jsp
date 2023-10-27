<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABML Cuentas</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
  
  </style>
</head>

<body style="height:1500px">

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li><a href="PantallaInicioAdmin.jsp">Home</a></li>
      <li><a href="ABMLclientes.jsp">ABML Clientes</a></li>
      <li class="active"><a href="#">ABML Cuentas</a></li>
      <li><a href="AutorizacionPrestamos.jsp">Autorización de Prestamos</a></li>
      <li><a href="ReportesYEstadisticas.jsp">Reportes/Estadísticas</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</a></li>
	</ul>
  </div>
</nav>

<div class="container" style="margin-top:100px">
  	<h2>ABML CUENTAS</h2>
  
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#AltaCuenta">ALTA CUENTA</a></li>
	    <li><a data-toggle="tab" href="#BajaCuenta">BAJA CUENTA</a></li>
	    <li><a data-toggle="tab" href="#ModificarCuenta">MODIFICAR CUENTA</a></li>
	    <li><a data-toggle="tab" href="#ListarCuenta">LISTAR CUENTA</a></li>
	</ul>

	<div class="tab-content">
	
<!-- - - - PESTAÑA ALTA CUENTA - - - -->

		<div id="AltaCuenta" class="tab-pane fade in active">
      		<h3>DAR DE ALTA UNA CUENTA</h3>
      		<br>
      		<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-2 control-label">DNI del Cliente</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaDNI" class="form-control" id="focusedInput" type="text" placeholder="Ingrese DNI" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Número de Cuenta</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaNumCuenta" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el Número de Cuenta" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Fecha de Creación</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaFechaCreacion" class="form-control" id="focusedInput" type="date" placeholder="Ingrese la Fecha de Creación" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Tipo de cuenta</label>
					<div class="col-sm-10">
						<div class="dropdown">
							<button name="ddlAltaCuentaTipoCuenta" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" >Seleccione un tipo de cuenta <span class="caret"></span></button>
					  		<ul class="dropdown-menu" required>
								<li><a href="#">Caja de ahorro</a></li>
								<li><a href="#">Cuenta corriente</a></li>
							</ul>
						</div>
			 		</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">CVU</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaCVU" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el CVU" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Alias</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaAlias" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el Alias" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Saldo Inicial</label>
					<div class="col-sm-10">
						<input name="txtAltaCuentaSaldoInicial" class="form-control" id="focusedInput" type="number" placeholder="$10.000" disabled>
					</div>
				</div>
				<br>
				<div class="text-center">
					<button name="btnAltaCuentaAceptar" type="submit" class="btn btn-default">Aceptar</button>
				</div>
      		</form>
    	</div>
    	
<!-- - - - PESTAÑA BAJA CUENTA - - - -->

	<div id="BajaCuenta" class="tab-pane fade">
    	<h3>DAR DE BAJA UNA CUENTA</h3>
       	<br>
		<form class="form-horizontal">
			<div class="row">
  				<div class="col-sm-3">
					<label class="control-label">Número de Cuenta que desea eliminar</label>
				</div>
  				<div class="col-sm-6">
					<input name="txtBajaCuentaNumCuenta" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el Número de Cuenta" required>
				</div>
  				<div class="col-sm-3">
					<button name="btnBajaCuentaiminar"type="submit" class="btn btn-default">Eliminar</button>
				</div>
			</div>
		</form>
    </div>
    
<!-- - - - PESTAÑA MODIFICAR CUENTA - - - -->

    <div id="ModificarCuenta" class="tab-pane fade">
      	<h3>MODIFICAR UNA CUENTA</h3>
      	<br>
		<form class="form-horizontal">
      		<div class="row">
  				<div class="col-sm-4" style="text-align: right;">
					<label class="control-label" > Número de Cuenta que desea modificar</label>
				</div>
  				<div class="col-sm-6">
					<input name="txtModificarCuentaNumCuenta" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el Número de Cuenta" required>
				</div>
  				<div class="col-sm-2">
					<button name="btnModificarCuentaAceptar" type="submit" class="btn btn-default form-control col-sm-4" data-toggle="collapse" data-target="#demo">Aceptar</button>
				</div>
			</div>
			<br>
			<br>
			<br>
			<div id="demo" class="collapse">
				<div class="form-group">
					<label class="col-sm-2 control-label">DNI del Cliente</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaDNI" class="form-control" id="focusedInput" type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Número de Cuenta</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaNumCuenta" class="form-control" id="focusedInput" type="number" disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Fecha de Creación</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaFechaCreacion" class="form-control" id="focusedInput" type="date">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Tipo de cuenta</label>
					<div class="col-sm-10">
						<div class="dropdown">
							<button name="ddlModificarCuentaTipoCuenta" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" >Seleccione un tipo de cuenta <span class="caret"></span></button>
					  		<ul class="dropdown-menu" required>
								<li><a href="#">Caja de ahorro</a></li>
								<li><a href="#">Cuenta corriente</a></li>
							</ul>
						</div>
			 		</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">CVU</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaCVU" class="form-control" id="focusedInput" type="number" disabled>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Alias</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaAlias" class="form-control" id="focusedInput" type="text">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Saldo</label>
					<div class="col-sm-10">
						<input name="txtModificarCuentaSaldo" class="form-control" id="focusedInput" type="number" disabled>
					</div>
				</div>
				<br>
				<div class="text-center">
					<button name="btnModificarCuentaAceptar" type="button" class="btn btn-default">Aceptar</button>
				</div>
			</div>
      	</form>
    </div>
    
<!-- - - - PESTAÑA LISTAR CUENTAS - - - -->

    <div id="ListarCuenta" class="tab-pane fade">
      <h3>LISTAR UNA CUENTA</h3>
      <br>
		<form class="form-horizontal">
			<div class="row">
	  			<div class="col-md-3" style="text-align: right;">
					<label class="control-label" >Busqueda de Cuentas por:</label>
				</div>
	  			<div class="col-md-2">
					<div class="dropdown">
						<button name="ddlListarCuentaListarPor" class="btn btn-default dropdown-toggle" style="width:100%" type="button" data-toggle="dropdown">Listar por: <span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">Tipo de Cuenta</a></li>
							<li><a href="#">Cliente</a></li>
							<li><a href="#">CVU</a></li>
							<li><a href="#">Alias</a></li>
						</ul>
			  		</div>
				</div>
	  			<div class="col-md-3" style="width:10%">
					<button name="btnListarCuentaFiltrar" type="button" class="btn btn-default form-control">Filtrar</button>
				</div>
			</div>
			<br>
			<br>
			<div>
				<table class="table table-bordered">
	    			<thead>
	      				<tr>
	        				<th>Número de Cuenta</th>
					        <th>DNI del Cliente</th>
					        <th>Fecha de Creación</th>
					        <th>Tipo de cuenta</th>
					        <th>CVU</th>
					        <th>Alias</th>
					        <th>Saldo</th>
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