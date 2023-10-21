<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reportes y Estadisticas</title>
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
			<li><a href="AutorizacionPrestamos.jsp">Autorización de Prestamos</a></li>
			<li class="active"><a href="ReportesYEstadisticas.jsp">Reportes/Estadísticas</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
        	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario</a></li>
        	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</a></li>
		</ul>
	</div>
</nav>

<div class="container" style="margin-top:100px">
	<h1>Informes y Reportes Estadísticos</h1>
	<br>
	<br>
	<div class="row">
  				<div class="col-sm-3">
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" style="width:100%" type="button" data-toggle="dropdown">Informe de: <span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">Cantidad de transferencias</a></li>
							<li><a href="#">Cantidad de prestamos autorizados</a></li>
							<li><a href="#">Cajas de ahorro abiertas</a></li>
							<li><a href="#">Cuentas corrientes abiertas</a></li>
						</ul>
			  		</div>
				</div>
				<div class="col-sm-1">
					<h4 >desde: </h4>
				</div>
  				<div class="col-sm-2">
  					<input name="txtReportesDesde" class="form-control" id="focusedInput" type="date" placeholder="Ingrese el Número de Cuenta" required>
				</div>
				<div class="col-sm-1">
					<h4>hasta: </h4>
				</div>
  				<div class="col-sm-2">
  					<input name="txtReportesHasta" class="form-control" id="focusedInput" type="date" placeholder="Ingrese el Número de Cuenta" required>
				</div>
  				<div class="col-sm-3">
					<button name="btnReportesBuscar" type="submit" class="btn btn-default">Buscar</button>
				</div>
			</div>
</div>
</body>
</html>