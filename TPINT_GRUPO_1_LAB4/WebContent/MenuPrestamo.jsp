<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menu de prestamos</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

	<style>
    /* Estilos personalizados */

    body {
        background-color: #f2f2f2; /* Cambia el color de fondo a un tono más oscuro si lo deseas */
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #221e29; /* Cambia el color del texto si el fondo es más oscuro */
    }

    .container {
        max-width: 1200px;
        background-color: rgba(255, 255, 255, 0.8); /* Agrega un fondo semi-transparente a los contenedores */
        padding: 20px;
        border-radius: 10px;
    }

    form {
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        margin-top: 20px;
        background-color: #fff; /* Cambia el color de fondo de la tabla */
        border-radius: 10px;
    }

    .card {
        background-color: #fff; /* Cambia el color de fondo de las cards */
        border-radius: 10px;
    }

    .card-body {
        color: #000; /* Cambia el color del texto en las cards si el fondo es más oscuro */
    }

    .btn-primary {
        display: block;
        margin: auto;
    }

    #gridSection h3 {
        text-align: center;
        margin-bottom: 20px;
        color: #fff; /* Cambia el color del texto si el fondo es más oscuro */
    }
</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="PanelDeControl.jsp">Logo del banco</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <span class="navbar-text mr-3">¡Bienvenido *Variable del nombre*!</span>
                </li>
            </ul>
        </div>
    </nav>

<div class="container mt-5" style="margin-top: 100px;">

	<div class="d-flex justify-content-center">
        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title">Verificar aca si existe un prestamo pendiente</h5>
                <p class="card-text">hacer la verificacion del prestamo pendiente, actualizar dependiendo de si si o no</p>
                <!-- Agrega un formulario para verificar el préstamo existente -->
            </div>
        </div>
    </div>

    <h2>Préstamos de la cuenta</h2>
    
    <div class="row">
    	
        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-body">
                <h5 class="card-title">Solicitud de Préstamo</h5>
                <p class="card-text">Complete el siguiente formulario para solicitar un préstamo.</p>
                <form action="procesarSolicitud.jsp" method="post">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="txtNombre" required>
            </div>
            <div class="form-group">
                <label for="monto">Monto del Préstamo:</label>
                <input type="number" class="form-control" id="monto" name="txtMonto" required>
            </div>
            <div class="form-group">
                <label for="plazo">Plazo (en meses):</label>
                <input type="number" class="form-control" id="plazo" name="txtPlazo" required>
            </div>
            <div class="form-group">
                <label for="tasa">Tasa de Interés:</label>
                <input type="number" class="form-control" id="tasa" name="txtTasa" required>
            </div>
            <div class="form-group">
                <label for="garantia">Garantía:</label>
                <input type="text" class="form-control" id="garantia" name="txtGarantia" required>
            </div>
            <button type="submit" class="btn btn-primary">Enviar Solicitud</button>
        </form>
                
            </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
            	<div class="card-body">
            <h5 class="card-title">Pago de Préstamo</h5>
            <p class="card-text">Ingrese los detalles de pago para realizar un pago de préstamo.</p>
            <form action="procesarPago.jsp" method="post">
                <div class="form-group">
                    <label for="idPrestamo">ID del Préstamo:</label>
                    <input type="text" class="form-control" id="idPrestamo" name="idPrestamo" required>
                </div>
                <div class="form-group">
                    <label for="montoPago">Monto a Pagar:</label>
                    <input type="number" class="form-control" id="montoPago" name="montoPago" required>
                </div>
                <div class="form-group">
                    <label for="metodoPago">Método de Pago:</label>
                    <select class="form-control" id="metodoPago" name="metodoPago" required>
                        <option value="tarjeta">Tarjeta de Crédito</option>
                        <option value="transferencia">Transferencia Bancaria</option>
                        <option value="efectivo">Efectivo</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Realizar Pago</button>
            </form>
        </div>
                
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
            	<div class="card-body">
            <h5 class="card-title">Listado de Préstamos</h5>
            <p class="card-text">Consulte los detalles de todos los préstamos realizados desde esta cuenta.</p>
            <a class="btn btn-primary" href="#gridSection" role="button">Ver mis prestamos</a>
            <label></label>
        </div>
                
            </div>
        </div>
    </div>
</div>

<div id="gridSection" class="mt-5">
    <h2>Detalles de Préstamos</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Número de Préstamo</th>
                    <th scope="col">Número de Cuenta</th>
                    <th scope="col">DNI del Cliente</th>
                    <th scope="col">Fecha del Préstamo</th>
                    <th scope="col">Importe Pedido</th>
                    <th scope="col">Importe a Pagar</th>
                    <th scope="col">Plazo de Pago</th>
                    <th scope="col">Monto Mensual</th>
                    <th scope="col">Cantidad de Cuotas</th>
                    <th scope="col">Estado</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>P001</td>
                    <td>C001</td>
                    <td>40228675</td>
                    <td>28/03/2018</td>
                    <td>$200500</td>
                    <td>$300750</td>
                    <td>28/03/2019</td>
                    <td>8354,17</td>
                    <td>12</td>
                    <td>Pendiente</td>
                </tr>
                <!-- Dejé un ejemplo arriba, habria que hacer la verificacion de si hay prestamos pasados, y sino, no mostrar una wea y en su caso una label -->
            </tbody>
        </table>
    </div>
</div>

</body>
</html>