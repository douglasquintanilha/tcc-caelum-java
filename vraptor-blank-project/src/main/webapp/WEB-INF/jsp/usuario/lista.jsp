<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/header.jsp" />

	<a href="${linkTo[UsuarioController].form() }">Novo Usuario</a>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Login</th>
				<th>Email</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.id}</td>
					<td>${usuario.login}</td>
					<td>${usuario.email}</td>
				</tr>
			</c:forEach> 
		</tbody>
	</table>



<c:import url="/WEB-INF/jsp/footer.jsp" />