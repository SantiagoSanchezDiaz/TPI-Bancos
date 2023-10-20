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
  .fakeimg {
    height: 200px;
    background: #aaa;
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
                <li class="nav-item"><a href="#" class="nav-link">Sobre nosotros</a></li>
                <li class="nav-item"><a href="#" class="nav-link">Agregar mas weas aca?</a></li>
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

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>-Nombre del banco-</h1>
</div>



<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h2>Agregar weasss</h2>
      <h5>wea</h5>
      <div class="fakeimg">wea imagen</div>
      <p>Lorem ipsum nashe</p>
      
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <h2>Pense esta seccion tipo: agregar fotos de como se ve la app del banco adentro, algunas secciones tipo el inicio, las transacciones, el historial, cosas asi en fotos debajo</h2>
      <h5>Historial de transacciones:</h5>
      <div class="fakeimg">Historial truchardo</div>
      <br>
      <h5>Nuestra app</h5>
      <div class="fakeimg">muestra de la seleccion de las difs cuentas</div>
      <p>Puedes seleccionar con que cuenta ingresar para realizar tus transacciones o pagar tus prestamos</p>
    </div>
  </div>
</div>

</body>
</html>