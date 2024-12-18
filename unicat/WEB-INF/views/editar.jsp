<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            	<span id="spanzin">Espécie: <input placeholder="Espécie do animal" class="form-control" type="text" name="especie"></span>
	            <span id="spanzin">Nome: <input placeholder="Nome do animal" class="form-control" type="text" name="nome"></span>
	            <span id="spanzin">Idade: <input placeholder="Idade do animal" class="form-control" type="text" name="idade"></span>
	            <span id="spanzin">Raça: <input placeholder="Raça do animal" class="form-control" type="text" name="raca"></span>
	             <span id="spanzin">Sexo:</span><br>
	               <select id="selecionar" name="sexo" placeholder="Selecione o sexo">
	                   <span></span>
	                   <option selected="" disabled=""><p>Selecione uma opção...</p></option>
	                   <option value="M">Macho</option>
	                   <option value="F">Fêmea</option>
	               </select><br>
	            <span id="spanzin">Porte: <input placeholder="Porte do animal" class="form-control" type="text" name="porte"></span>
              	<span id="spanzin">Peso: <input placeholder="Peso do animal" class="form-control" type="text" name="peso"></span>
              	<label id="spanzin">Personalidade:</label><br>
              		<input type="checkbox" " name="personalidade" value="Sociavel">
			    	<label for="personalidade">Sociavel</label><br>
			    	<input type="checkbox" name="personalidade" value="Brincalhão">
			    	<label for="personalidade">Brincalhão</label><br>
			   		<input type="checkbox" name="personalidade" value="Carinhoso">
			  		<label for="personalidade">Carinhoso</label>
              <br>
              <br>
              <span></span>
              <br>
              <p class="text-end">
              	<span><form:button class="btn btn-primary btn-lg">Atualizar</form:button></span>
              </p>
            </div>
          </form:form>
        </div>
      </div>
  
  </div>
</body>
</html>