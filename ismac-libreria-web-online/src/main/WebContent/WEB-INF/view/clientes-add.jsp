<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Cliente</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css" />
</head>
<body>
    <nav>
        <!-- Aquí va el menú de navegación, si es necesario -->
    </nav>

    <section class="container py-5">
        <h1>Agregar Nuevo Cliente</h1>
        
        <form action="${pageContext.request.contextPath}/clientes/add" method="post" class="needs-validation" novalidate>
            <!-- Campo oculto para ID del Cliente (Auto Incrementado en DB) -->
            <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
            
            <!-- Cédula -->
            <div class="form-group">
                <label for="cedula" class="form-label">Cédula</label>
                <input type="text" class="form-control" id="cedula" name="cedula" value="${cliente.cedula}" required />
                <div class="invalid-feedback">
                    Por favor, ingrese un número de cédula válido.
                </div>
            </div>

            <!-- Nombre -->
            <div class="form-group">
                <label for="nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value="${cliente.nombre}" required />
                <div class="invalid-feedback">
                    El nombre es obligatorio.
                </div>
            </div>

            <!-- Apellido -->
            <div class="form-group">
                <label for="apellido" class="form-label">Apellido</label>
                <input type="text" class="form-control" id="apellido" name="apellido" value="${cliente.apellido}" required />
                <div class="invalid-feedback">
                    El apellido es obligatorio.
                </div>
            </div>

            <!-- Dirección -->
            <div class="form-group">
                <label for="direccion" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="direccion" name="direccion" value="${cliente.direccion}" required />
                <div class="invalid-feedback">
                    La dirección es obligatoria.
                </div>
            </div>

            <!-- Teléfono -->
            <div class="form-group">
                <label for="telefono" class="form-label">Teléfono</label>
                <input type="text" class="form-control" id="telefono" name="telefono" value="${cliente.telefono}" required />
                <div class="invalid-feedback">
                    Por favor, ingrese un número de teléfono válido.
                </div>
            </div>

            <!-- Correo Electrónico -->
            <div class="form-group">
                <label for="correo" class="form-label">Correo Electrónico</label>
                <input type="email" class="form-control" id="correo" name="correo" value="${cliente.correo}" required />
                <div class="invalid-feedback">
                    Ingrese un correo electrónico válido.
                </div>
            </div>

            <!-- Botones de Acción -->
            <div class="form-group py-3" style="text-align: right;">
                <button type="submit" class="btn btn-primary">
                    <i class='fa fa-plus-circle'></i> Guardar
                </button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='${pageContext.request.contextPath}/clientes/findAll'; return false;">
                    <i class='fa fa-times-circle'></i> Cancelar
                </button>
            </div>
        </form>
    </section>

    <footer></footer>

    <!-- Scripts -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>

    <!-- Validación del Formulario -->
    <script>
        (() => {
            'use strict';
            const forms = document.querySelectorAll('.needs-validation');
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
</body>
</html>
