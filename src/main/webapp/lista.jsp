<%@ page import="br.com.mayki.daily_task.entidades.Tarefa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<!-- Meta tags Obrigatórias -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	
	<!-- Css Local -->
<link rel="stylesheet" href="./cssLocal.css">

<title>Daily task</title>
</head>
<body>

	<header>
		<nav
			class="navbar navbar-light cor-navbar d-flex justify-content-between">
			<a class="navbar-brand" href="/Daily_task/tarefas"> <img src="./img/logo.png"
				width="30" height="30" class="d-inline-block align-top" alt="">
				Daily task
			</a>
			<a class="btn btn-secondary btn-lg" href="/Daily_task/tarefas/adicionar">Adicionar Tarefa</a>
		</nav>
	</header>

	<main class="mt-3">
		<div class="container">
			<div class="row">
				

				<!-- MONTA CARDS -->
				<c:forEach items="${tarefas}" var="tarefa">
				
				<c:if test="${tarefa.finalizado == true }">
				<c:set var="classe" value="feito"/>
				</c:if>
				
				<c:if test="${tarefa.finalizado == false }">
				<c:set var="classe" value="tata"/>
				</c:if>
				
				
					<div class="card m-3 tamanho-card ${ classe }">
						<div class="card-header">Tarefa</div>
						<div class="card-body d-flex flex-column justify-content-between">
							<p class="card-text">${ tarefa.descricao }</p>
							<div class="d-flex">
							<c:if test="${ tarefa.finalizado == false}" >
								<form class="m-1" action="/Daily_task/tarefas/marcarDesmarcar" method="GET">
									<input name="id" value="${tarefa.id}" type="hidden">
									<button class="btn btn-success" type="submit">Feito</button>
								</form>
								<form class="m-1" action="tarefas/adicionar" method="GET">
									<input name="id" value="${tarefa.id}" type="hidden">
									<button class="btn btn-outline-primary" type="submit">Alterar</button>
								</form>							
							</c:if>
							
							<c:if test="${ tarefa.finalizado == true}">
								<form class="m-1" action="/Daily_task/tarefas/marcarDesmarcar" method="POST">
								<input name="id" value="${tarefa.id}" type="hidden">
									<button class="btn btn-outline-warning" type="submit">Desmarcar</button>
								</form>
							</c:if>
							
							
							<form class="m-1" action="/Daily_task/tarefas/excluir" method="POST">
								<input name="id" value="${tarefa.id}" type="hidden">
								<button class="btn btn-outline-danger" type="submit">Excluir</button>
							</form>
							</div>
						</div>
					</div>				
				</c:forEach>

				
				
				
			</div>
		</div>
	</main>

	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>