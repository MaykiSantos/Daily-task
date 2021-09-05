<%@ page import="br.com.mayki.daily_task.entidades.Tarefa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="../cssLocal.css">

<title>Daily task</title>
</head>
<body>

	<header>
		<nav
			class="navbar navbar-light cor-navbar ">
			<a class="navbar-brand" href="/Daily_task/tarefas"> <img src="../img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
				Daily task
			</a>
		</nav>
	</header>

	<main class="mt-3">
		<div class="container">
			<div class="row">

				<div class="col-12">
					<form action="/Daily_task/tarefas/adicionar" method="POST">
						<div class="form-group">
							<label for="exampleFormControlTextarea1">Descrição da Tarefa</label>
							<textarea class="form-control" rows="3" name="descricao" >${ tarefa.descricao }</textarea>
							<input name="id" value="${ tarefa.id }" type="hidden">
							<button type="submit" class="btn btn-primary m-2">Salvar</button>
						</div>
					</form>
				
				</div>





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