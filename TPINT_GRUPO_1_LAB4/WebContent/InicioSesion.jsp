<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
  <title>-Nombre del banco-</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
        body {
            background-color: #D0D0D0;
            color: #2A3132;
        }

        .fakeimg {
            height: 200px;
            background: #aaa;
        }

        .jumbotron {
            background-color: #2A3132;
            color: #90AFC5;
            margin-bottom: 0;
        }

        .card {
            background-color: #90AFC5;
            color: #2A3132;
            margin-bottom: 30px;
        }

        .card-title {
            color: #763626;
        }

        .navbar {
            background-color: #2A3132;
        }

        .nav-link {
            color: #90AFC5 !important;
        }

        .navbar-dark .navbar-toggler {
            border-color: #90AFC5;
        }

        .navbar-dark .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 32 32' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(144, 175, 197, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 8h24M4 16h24M4 24h24'/%3E%3C/svg%3E");
        }

        .dropdown-menu {
            background-color: #2A3132;
        }

        .dropdown-item {
            color: #90AFC5;
        }

        .dropdown-item:hover {
            background-color: #90AFC5;
            color: #2A3132;
        }

        .dropdown-item:focus {
            background-color: #90AFC5;
            color: #2A3132;
        }

        .dropdown-toggle::after {
            color: #90AFC5;
        }
    </style>

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
                <li class="nav-item"><a href="#" class="nav-link">Sobre nosotros</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Información de la página</a></li>
            </ul>
            <ul class="nav navbar-nav flex-row justify-content-between ml-auto">
                <li class="nav-item order-2 order-md-1"><a href="#" class="nav-link" title="settings"><i class="fa fa-cog fa-fw fa-lg"></i></a></li>
                <li class="dropdown order-1">
                    <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-outline-secondary dropdown-toggle">Login <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right mt-1">
                      <li class="p-3">
                            <form class="form" role="form">
                                <div class="form-group">
                                    <input id="emailInput" name="txtEmail" placeholder="Email" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <input id="passwordInput" name ="txtContraseña" placeholder="Contraseña" class="form-control form-control-sm" type="text" required="">
                                </div>
                                <div class="form-group">
                                    <button type="submit" name="btnIngresar" class="btn btn-primary btn-block">Ingresar</button>
                                </div>
                                <div class="form-group text-xs-center">
                                    <small><a href="ContraseñaOlvidada.jsp">¿Has olvidado la contraseña?</a></small>
                                </div>
                            </form>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

	

<div class="jumbotron jumbotron-fluid text-center" style="background-color: #2A3132;">
  <div class="container">
    <h1 class="display-4" style="color: #90AFC5; font-weight: bold;">¡Bienvenido a -Nombre del Banco-!</h1>
    <p class="lead" style="color: #336B87">Ofreciendo soluciones financieras confiables y de calidad desde 1990.</p>
  </div>
</div>

<div class="container mt-4">
  <div class="row">
    <div class="col-lg-4 col-md-6 mb-4">
      <div class="card h-100">
        <div class="card-body">
          <h2 class="card-title">Información adicional</h2>
          <p class="card-text"></p>
        </div>
        <img class="card-img-top" src="https://via.placeholder.com/250" alt="Wea">
      </div>
    </div>
    <div class="col-lg-8 col-md-6">
      <div class="card h-100">
        <div class="card-body">
          <h2 class="card-title">Agregar informacion adicional de los funcionamientos</h2>
          <p class="card-text">Agregar fotos de cómo se ve la app del banco adentro, algunas secciones como el inicio, las transacciones, el historial, etc.</p>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card-body">
              <h5 class="card-title">Historial de Transacciones</h5>
              <img class="card-img-top" src="https://via.placeholder.com/300" alt="Historial falso">
            </div>
          </div>
          <div class="col-md-6">
            <div class="card-body">
              <h5 class="card-title">Nuestra App</h5>
              <img class="card-img-top" src="https://via.placeholder.com/300" alt="Muestra de la selección de las diferentes cuentas">
              <p class="card-text">Puedes seleccionar con qué cuenta ingresar para realizar tus transacciones o pagar tus préstamos.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>