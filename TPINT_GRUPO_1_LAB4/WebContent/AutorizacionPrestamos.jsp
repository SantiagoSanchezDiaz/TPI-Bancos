<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Autorización de préstamos</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li><a href="PantallaInicioAdmin.jsp">Home</a></li>
			<li><a href="ABMLclientes.jsp">ABML Clientes</a></li>
			<li><a href="ABMLcuentas.jsp">ABML Cuentas</a></li>
			<li class="active"><a href="AutorizacionPrestamos.jsp">Autorización de Prestamos</a></li>
			<li><a href="ReportesYEstadisticas.jsp">Reportes/Estadísticas</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
        	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario</a></li>
        	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</a></li>
		</ul>
	</div>
</nav>

<div class="container" style="margin-top:100px">
	<h1>Autorización de préstamos</h1>
	<br>
	<br>
	<div>
		<h2>Revision de Solicitudes</h2>
		<table class="table table-bordered">
	    	<thead style="margin: auto">
	      		<tr>
	        		<th style="text-align:center">DNI</th>
					<th style="text-align:center">Cantidad</th>
					<th style="text-align:center">Cuotas</th>
					<th style="text-align:center">Cuenta</th>
					<th></th>
					<th></th>
	      		</tr>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td style="padding: 1px"><button name="btnAutorizacionPrestamosAutorizar" type="submit" class="btn btn-default form-control" data-toggle="collapse" data-target="#demo">Autorizar</button></td>
					<td style="padding: 1px"><button name="btnAutorizacionPrestamosRechazar" type="button" class="btn btn-default form-control">Rechazar</button></td>
				</tr>
	  		</tbody>
		</table>
	</div>
	<br>
	<div id="demo" class="collapse">
		<h2>Aprobacion de préstamos</h2>
		<br>
      		<form class="form-horizontal">
				<div class="form-group">
					<label class="col-sm-2 control-label">DNI del Cliente:</label>
					<div class="col-sm-10">
						<input name="txtAutorizacionPrestamosDNI" class="form-control" id="focusedInput" type="text" placeholder="Ingrese DNI" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Monto:</label>
					<div class="col-sm-10">
						<input name="txtAutorizacionPrestamosMonto" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el Monto" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Cantidad de Cuotas:</label>
					<div class="col-sm-10">
						<input name="txtAutorizacionPrestamosCuotas" class="form-control" id="focusedInput" type="number" placeholder="Ingrese la Cantidad de Cuotas" required>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label">Cuenta Destino:</label>
					<div class="col-sm-10">
						<input name="txtAutorizacionPrestamosCuentaDestino" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el Numero de Cuenta" required>
					</div>
				</div>
				<br>
				<div class="text-center">
					<button name="btnAutorizacionPrestamosAceptar"type="submit" class="btn btn-default">Aceptar</button>
				</div>
      		</form>
	</div>
</div>
</body>
</html>