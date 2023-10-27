<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Informacion personal</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="PanelDeControl.jsp">Logo del banco</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <span class="navbar-text mr-3">�Buenas!</span>
                </li>
            </ul>
        </div>
    </nav>
    
	<div class="container mt-5" style="padding-top: 56px;">
    <div class="card">
        <div class="card-body">
            <h1 class="card-title" style="text-align: center; margin-bottom: 20px;">Esta es toda tu informaci�n personal</h1>
            <table class="table table-hover table-dark">
                <thead>
                    <tr>
                        <th scope="col">Cuit</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Sexo</th>
                        <th scope="col">Nacionalidad</th>
                        <th scope="col">Fecha de nacimiento</th>
                        <th scope="col">Direcci�n</th>
                        <th scope="col">Localidad</th>
                        <th scope="col">Provincia</th>
                        <th scope="col">Correo electr�nico</th>
                        <th scope="col">Tel�fono</th>
                        <th scope="col">Usuario</th>
                    </tr>
                </thead>
                <tbody>
                    
                </tbody>
            </table>            
        </div>
    </div>
</div>

		<div class="text-center" style="margin-top: 20px;">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Arrepentimiento / Darse de baja</button>
            </div>

<!-- Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">�Borrar�s tu cuenta!</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                �Tenlo claro, no hay vuelta atr�s para esta opci�n!
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Borrar definitivamente</button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>


</body>
</html>