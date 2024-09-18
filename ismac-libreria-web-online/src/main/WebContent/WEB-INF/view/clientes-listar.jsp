<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Clientes</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
</head>
<body>

<nav></nav>

<section class="px-5 py-5">
    <h1>Clientes</h1>
    
    <div class="container" style="text-align: center">
        <button class="btn btn-primary" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?opcion=1'; return false;">
            <i class="fa-solid fa-user-plus" style='font-size:36px;color:white'></i>
            Agregar Cliente
        </button>
    </div>
    
    <div class="table-responsive">
        <table id="tablaClientes" 
               name="tablaClientes" 
               data-height="600" 
               data-search="true" 
               data-pagination="true" 
               class="table table-striped table-sm">
            <thead>
                <tr>
                    <th data-field="id_cliente" data-sortable="true">ID Cliente</th>
                    <th data-field="cedula" data-sortable="true">Cédula</th>
                    <th data-field="nombre" data-sortable="true">Nombre</th>
                    <th data-field="apellido" data-sortable="true">Apellido</th>
                    <th data-field="direccion" data-sortable="true">Dirección</th>
                    <th data-field="telefono" data-sortable="true">Teléfono</th>
                    <th data-field="correo" data-sortable="true">Correo</th>
                    <th data-field="acciones" data-sortable="false">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="cliente" items="${clientes}">
                    <tr>
                        <td>${cliente.idCliente}</td>
                        <td>${cliente.cedula}</td>
                        <td>${cliente.nombre}</td>
                        <td>${cliente.apellido}</td>
                        <td>${cliente.direccion}</td>
                        <td>${cliente.telefono}</td>
                        <td>${cliente.correo}</td>
                        <td>
                            <button class="btn btn-success" onclick="window.location.href='/ismac-libreria-web-online/clientes/findOne?idCliente=${cliente.idCliente}&opcion=1'; return false;">
                                <i class='fas fa-user-edit' style='font-size:16px;color:white'></i> Actualizar
                            </button>
                            <button class="btn btn-danger" onclick="window.location.href='/ismac-libreria-web-online/clientes/delete?idCliente=${cliente.idCliente}'; return false;">
                                <i class='fa-solid fa-trash-can' style='font-size:25px;color:white'></i> Eliminar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<footer></footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>

<script type="text/javascript">
    var $tablaClientes = $('#tablaClientes');
    $(function() {
        $tablaClientes.bootstrapTable({
            sortReset: true
        });
    });
</script>

</body>
</html>
