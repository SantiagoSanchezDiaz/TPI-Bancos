<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel de control</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	
	

</head>
<body> 

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <img alt="Logo del banco">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
            	<li class="nav-item">
                    <span class="navbar-text mr-3">Tu cuenta actual es *variable de la cuenta*</span>
                </li>
                <li class="nav-item dropdown">           
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Seleccionar otra cuenta
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="#">Cuenta 1</a>
                        <a class="dropdown-item" href="#">Cuenta 2</a>
                        <a class="dropdown-item" href="#">Cuenta 3</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="btn btn-primary ml-2" href="InformacionPersonal.jsp" role="button">Información Personal</a>
                </li>
            </ul>
        </div>
    </nav>

	<div class="container mt-5">
		<div class="card" style="margin-top: 150px;">
			<div class="card-body">
				<h5 class="card-title" style="margin-bottom: 20px;">Movimientos
					Recientes</h5>
				<table class="table table-hover table-dark">
					<thead>
						<tr>
							<th scope="col">Fecha</th>
							<th scope="col">Cuenta de origen</th>
							<th scope="col">Cuenta destinatario</th>
							<th scope="col">Monto</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
				<a href="HistorialMovimientos.jsp" style="text-decoration: none;">
					<button type="button" class="btn btn-link">Ver todos mis
						movimientos</button>
				</a>
			</div>
		</div>
	</div>

	<div class="container mt-5">
    	<div class="card text-center">
        	<div class="card-body">
            	<h2 class="card-title" style="margin-bottom: 20px;">Préstamos</h2>
            	<a href="MenuPrestamo.jsp" style="text-decoration: none;">
               		<button type="button" class="btn btn-outline-info btn-lg">Manejar mis préstamos</button>
            	</a>
        	</div>
    	</div>
	</div>
	
 	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	
</body>
</html>
