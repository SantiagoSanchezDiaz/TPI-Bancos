<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Contraseña Olvidada</title>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

	 <style>
        /* Ajusta el tamaño del formulario y agrega espacio superior */
        body {
            background-color: #222; /* Cambia este color a tu preferencia */
            color: #fff; /* Cambia el color del texto a tu preferencia */
        }

        .form-container {
            max-width: 400px;
            margin: 100px auto 0; /* Ajusta el valor del margen superior según sea necesario */
            padding: 20px;
            background-color: #333; /* Cambia este color a tu preferencia */
            color: #fff; /* Cambia el color del texto a tu preferencia */
            border-radius: 5px;
        }

        /* Estilo para los elementos de formulario */
        .form-group label {
            color: #fff; /* Cambia el color del texto a tu preferencia */
        }

        .form-group input,
        .form-group textarea {
            background-color: #555; /* Cambia este color a tu preferencia */
            color: #fff; /* Cambia el color del texto a tu preferencia */
        }

        /* Estilo para el botón */
        .btn-primary {
            background-color: #007bff; /* Cambia este color a tu preferencia */
            border-color: #007bff; /* Cambia este color a tu preferencia */
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
    <div class="container">
        <a class="navbar-brand" href="#">Brand</a>
        <button class="navbar-toggler border-0" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
            &#9776;
        </button>
        <div class="collapse navbar-collapse" id="exCollapsingNavbar">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Sobre nosotros</a></li>
            </ul>            
        </div>
    </div>
</nav>

  <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="#" method="get" class="form-container">
                    <h2 class="text-center mb-4">¿Has olvidado tu contraseña?</h2>
                    <p>No te preocupes, ingresa tu email debajo para recibir el codigo que te proporcionaremos para que puedas acceder a tu cuenta</p>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" class="form-control" id="email" placeholder="Ingresa tu correo electrónico">
                    </div>    
                    <button type="submit" class="btn btn-primary btn-block">Obtener codigo</button>                 
                </form>
            </div>
        </div>
    </div>

</body>

</html>