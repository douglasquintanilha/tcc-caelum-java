<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>TCC Caelum - Sistema Ebooks</title>
	
	<link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet"> 
</head>
<body>
	<header>
		<nav>
			<ul class="nav nav-tabs">
				<li><a href="${linkTo[IndexController].index() }"> Home</a> </li>
				<li><a href="${linkTo[UsuarioController].form() }"> Cadastro</a> </li>
			</ul>
		</nav>
	</header>
	
	<section class="container">
		<main class="col-sm-8">
			<!-- Conteúdo -->
