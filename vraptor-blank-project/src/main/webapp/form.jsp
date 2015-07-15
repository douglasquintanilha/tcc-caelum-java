<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="tcc-caelum" %>

<c:import url="/WEB-INF/jsp/header.jsp"/>
<form action="${linkTo[UsuarioController].adiciona(null)}" method="post">

    <label for="email">E-mail:</label>
    <input type="text" id="email" name="usuario.email" class="form-control" value="${usuario.email}"/>
    <tcc-caelum:validationMessage name="usuario.email"/>
    
    <label for="login">Login:</label>
    <input type="text" id="login" name="usuario.login" class="form-control" value="${usuario.login}"/>
    <tcc-caelum:validationMessage name="usuario.login"/>
    
    <label for="senha">Senha:</label>
    <input type="password" id="senha" name="usuario.senha" class="form-control" />
    <tcc-caelum:validationMessage name="usuario.senha"/>
    
    <input type="submit" value="Cadastrar" class="btn"/>
    
</form>
<c:import url="/WEB-INF/jsp/footer.jsp"/>