<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
   <title>Sistema Libreria</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<nav></nav>
<section class="px-5 py-5">
  <div class="container">
    <h1>Libros</h1> 
    <form action="add" method="post" class="needs-validation" novalidate>
      <!--idLibro-->
      <input type="hidden" id="idLibro" name="idLibro"  value="${libro.idLibro}" />
      <br/>
      
      <div class="form-group">
         <label for="titulo" class="form-label">**Título**</label>
         <input class="form-control" type="texto" id="titulo" name="titulo"  value="${libro.titulo}" required />
      </div>
      <div class="form-group">
         <label for="editorial" class="form-label">**Editorial**</label>
         <input class="form-control" type="texto" id="editorial" name="editorial"  value="${libro.editorial}" required />
      </div>
      <div class="form-group">
         <label for="numPaginas" class="form-label">**Número de Páginas**</label>
         <input class="form-control" type="number" id="numPaginas" name="numPaginas"  value="${libro.numPaginas}" required />
      </div>
      <div class="form-group">
         <label for="edicion" class="form-label">**Edición**</label>
         <input class="form-control" type="texto" id="edicion" name="edicion"  value="${libro.edicion}" />
      </div>
      <div class="form-group">
         <label for="idioma" class="form-label">**Idioma**</label>
         <input class="form-control" type="texto" id="idioma" name="idioma"  value="${libro.idioma}" required />
      </div>
      <div class="form-group">
         <label for="fechaPublicacion" class="form-label">**Fecha Publicación**</label>
         <input class="form-control" type="date" id="fechaPublicacion" name="fechaPublicacion"  value="${fn:substring(libro.fechaPublicacion,0,10)}" required />
      </div>
      <div class="form-group">
         <label for="descripcion" class="form-label">**Descripción**</label>
         <input class="form-control" type="texto" id="descripcion" name="descripcion"  value="${libro.descripcion}" />
      </div>
      <div class="form-group">
         <label for="tipoPasta" class="form-label">**Tipo Pasta**</label>
         <input class="form-control" type="texto" id="tipoPasta" name="tipoPasta"  value="${libro.tipoPasta}" required />
      </div>
      <div class="form-group">
         <label for="ISBN" class="form-label">**ISBN**</label>
         <input class="form-control" type="texto" id="ISBN" name="ISBN"  value="${libro.ISBN}" required />
      </div>
      <div class="form-group">
         <label for="numEjemplares" class="form-label">**Número Ejemplares**</label>
         <input class="form-control" type="number" id="numEjemplares" name="numEjemplares"  value="${libro.numEjemplares}" required />
      </div>
      <div class="form-group">
         <label for="portada" class="form-label">**Portada**</label>
         <input class="form-control" type="texto" id="portada" name="portada"  value="${libro.portada}" />
      </div>
      <div class="form-group">
         <label for="presentacion" class="form-label">**Presentacion**</label>
         <input class="form-control" type="texto" id="presentacion" name="presentacion"  value="${libro.presentacion}" required />
      </div>
      <div class="form-group">
         <label for="precio" class="form-label">**Precio**</label>
         <input class="form-control" step="any" type="number" id="precio" name="precio"  value="${libro.precio}" required />
      </div>
      <div class="form-group">
           <label for="idCategoria" class="form-label">**Categoria**</label>
           <select class="form-select" id="idCategoria" name="idCategoria" required >
             <c:forEach var="item" items="${categorias}"> 
                <option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria? 'selected' : ''}>${item.categoria}</option>
             </c:forEach>  
        </select>
      </div>
      <div class="form-group">
           <label for="idAutor" class="form-label">**Autor**</label>
           <select class="form-select" id="idAutor" name="idAutor" required >
              <c:forEach var="item" items="${autores}"> 
                 <option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor? 'selected' : ''}>${item.nombre} ${item.apellido}</option>
              </c:forEach>  
        </select>
      </div>
      <div class="form-group px-3 py-3" style="text-align: right;">
           <button class="btn btn-primary" type="submit"> <i class='fa fa-plus-circle' style='color: white'></i> Guardar </button>
           <button class="btn btn-primary" type="button" onclick="window.location.href='/ismac-libreria-web-online/libros/findAll'; return false;"><i class='fa fa-times-circle' style='color: white'></i> CANCELAR </button>     
      </div>
       
      </form>  
  
  </div>
</section>
<footer></footer>



    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
    
    <script type="text/javascript">
         
    (()=>{
    	'use strict'
    	
    	const forms = document.querySelectorAll('.needs-validation')
    	
    	Array.from(forms).forEach(form =>{
    		form.addEventListener('submit', event =>{
    			if(!form.checkValidity()){
    				event.preventDefault()
    				event.stopPropagation()
    			}
    			
    			form.classList.add('was-validated')
    		}, false)
    	})
    	
    })()
    
    </script>

</body>
</html>