<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Animais</title>
<spring:url var="css" value="/static/bootstrap.css" />
<spring:url var="style" value="/static/style.css" />
<link type="text/css" rel="stylesheet" href="${style}" />
<link type="text/css" rel="stylesheet" href="${css}" />
<link type="text/css" rel="stylesheet" href="/WEB-IFN/resources/bootstrap/css/bootstrap.css"/>
<link type="text/css" rel="stylesheet" href="/WEB-IFN/resources/bootstrap/css/style.css"/>

</head>

<body id="corpo">
  <div id="divs" class="container">
    <div id="div1" class="container-fluid">
    	<div class="container p-4 text-white text-center">
          <h2>PAINEL ADMIN</h2>
        </div>
    </div>
    <div id="divs2">
      <div id="div2" class="container"></div>
      <div id="div3" class="container">
        <br>
        <a class="container" style="margin-left: 15px; font-weight: bold;" href="formulario">voltar para formulário</a>
        <br>
        <br>
        <div class="container">
          <table class="table table-striped">
            <thead class="table-info">
              <th>ESPECIE</th>           
              <th>NOME</th>
              <th>IDADE</th>
              <th>RAÇA</th>
              <th>SEXO</th>
              <th>PORTE</th>
              <th>PESO/Kg</th>
              <th>PERSONALIDADE</th>
              <th></th>
            </thead>
            <tbody class="table-striped">
              <c:forEach var="animal" items="${animais}">
              <tr>
              	<td>${animal.especie}</td>
                <td>${animal.nome}</td>
                <td>${animal.idade}</td>
                <td>${animal.raca}</td>
                <td>${animal.sexo}</td>
                <td>${animal.porte}</td>
                <td>${animal.peso}</td>
                <td>${animal.personalidade}</td>
                <td class="text-end"><a class="btn btn-success" href="editar/${animal.id}">Editar</a><span>     </span><a class="text-end btn btn-danger" href="excluir/${animal.id}">Excluir</a></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>

    </div>
</body>
</html>