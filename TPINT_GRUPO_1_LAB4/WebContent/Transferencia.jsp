<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Transferencia</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" style="margin-top:100px">
  	<h2>Transferencias</h2>
  	<br>
  	<form class="form-horizontal">
  		<h3>Cuenta Origen</h3>
		<div class="form-group">
			<label class="col-sm-2 control-label">CVU: </label>
			<div class="col-sm-10">
				<input name="txtTransferenciasOrigenCVU" class="form-control" id="focusedInput" type="text" disabled>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Tipo de Cuenta: </label>
			<div class="col-sm-10">
				<input name="txtTransferenciasOrigenTipoCuenta" class="form-control" id="focusedInput" type="text" disabled>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Saldo: </label>
			<div class="col-sm-10">
				<input name="txtTransferenciasOrigenSaldo" class="form-control" id="focusedInput" type="text" disabled>
			</div>
		</div>
		<h3>Cuenta Destino</h3>
		<div class="form-group">
			<label class="col-sm-2 control-label">CVU: </label>
			<div class="col-sm-10">
				<input name="txtTransferenciasCVU" class="form-control" id="focusedInput" type="text" placeholder="Ingrese el CVU" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Monto: </label>
			<div class="col-sm-10">
				<input name="txtTransferenciasMonto" class="form-control" id="focusedInput" type="number" placeholder="Ingrese el monto" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">Descripcion: </label>
			<div class="col-sm-10">
				<div class="dropdown">
					<button name="txtTransferenciasDescripcion" class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" >Seleccione una Descripcion <span class="caret"></span></button>
					<ul class="dropdown-menu">
						<li><a href="#">Varios</a></li>
						<li><a href="#">Alquileres</a></li>
						<li><a href="#">Honorarios</a></li>
						<li><a href="#">Facturas</a></li>
						<li><a href="#">Suscripciones</a></li>
						<li><a href="#">Expensas</a></li>
						<li><a href="#">Cuotas</a></li>
						<li><a href="#">Prestamos</a></li>
						<li><a href="#">Seguros</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center">
			<button name="btnTransferenciasEnviar" type="submit" class="btn btn-default">Enviar</button>
		</div>
	</form>
</div>

</body>
</html>