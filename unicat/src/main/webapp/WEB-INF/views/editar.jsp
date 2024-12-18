<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PAINEL ADMIN</title>
<spring:url var="css" value="/static/bootstrap.css" />
<spring:url var="style" value="/static/style.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
<link type="text/css" rel="stylesheet" href="${style}" />
<link type="text/css" rel="stylesheet" href="/WEB-IFN/resources/bootstrap/css/bootstrap.css"/>
<link type="text/css" rel="stylesheet" href="/WEB-IFN/resources/bootstrap/css/style.css"/>
</head>

<body id="corpo">
  <div id="divs" class="container">
    <div id="div1">
      <div class="container-fluid p-4 text-white text-center">
        <h2>PAINEL ADMIN - EDITAR FORMULÁRIO</h2>
      </div>
    </div>
    <div id="divs2" style="border: solid 1px #332B47">
      <div id="div2"></div>
      <div id="div3">
        <br>
        <div class="container">
          <form:form method="POST" modelAttribute="animal" action="../editar/${id}">
            <div class="mb-3">
              <span id="spanzin">Espécie: </span>
              <form:input path="especie" class="form-control" value="${animal.especie}" />
              <form:errors path="especie" cssClass="text-danger" />

              <span id="spanzin">Nome: </span>
              <form:input path="nome" class="form-control" value="${animal.nome}" />
              <form:errors path="nome" cssClass="text-danger" />

              <span id="spanzin">Idade: </span>
              <form:input path="idade" class="form-control" value="${animal.idade}" />
              <form:errors path="idade" cssClass="text-danger" />

              <span id="spanzin">Raça: </span>
              <form:input path="raca" class="form-control" value="${animal.raca}" />
              <form:errors path="raca" cssClass="text-danger" />

              <span id="spanzin">Sexo:</span><br>
              <form:select id="selecionar" path="sexo" class="form-control">
                <option value="M" ${animal.sexo == 'M' ? 'selected' : ''}>Macho</option>
                <option value="F" ${animal.sexo == 'F' ? 'selected' : ''}>Fêmea</option>
              </form:select>
              <form:errors path="sexo" cssClass="text-danger" />

              <span id="spanzin">Porte: </span>
              <form:input path="porte" class="form-control" value="${animal.porte}" />
              <form:errors path="porte" cssClass="text-danger" />

              <span id="spanzin">Peso: </span>
              <form:input path="peso" class="form-control" value="${animal.peso}" />
              <form:errors path="peso" cssClass="text-danger" />

              <label id="spanzin">Personalidade:</label><br>
              		<input type="checkbox" " name="personalidade" value="Sociavel">
			    	<label for="personalidade">Sociavel</label><br>
			    	<input type="checkbox" name="personalidade" value="Brincalhão">
			    	<label for="personalidade">Brincalhão</label><br>
			   		<input type="checkbox" name="personalidade" value="Carinhoso">
			  		<label for="personalidade">Carinhoso</label>

              <p class="text-end">
                <form:button class="btn btn-primary btn-lg">Atualizar</form:button>
              </p>
            </div>
          </form:form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
