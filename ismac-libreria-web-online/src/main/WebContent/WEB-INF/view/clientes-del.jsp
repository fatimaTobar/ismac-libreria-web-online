
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sistema Libreria - Eliminar Cliente</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<section class="px-5 py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="card shadow-sm border-0">
                    <div class="card-body">
                        <h1 class="text-center mb-4">Eliminar Cliente</h1>
                        <form action="del" method="get">
                            <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
                            <p class="text-center">
                                <strong>¿Desea eliminar el cliente seleccionado?</strong>
                            </p>
                            <div class="text-center mt-4">
                                <button class="btn btn-danger me-3" type="submit">ELIMINAR</button>
                                <button class="btn btn-secondary" type="button" onclick="window.location.href='/ismac-libreria-web-online/clientes/findAll'; return false;">CANCELAR</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

</body> 
</html>
