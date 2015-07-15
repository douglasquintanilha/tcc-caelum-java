package br.com.caelum.vraptor.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import br.com.caelum.tcc.dao.UsuarioDao;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class UsuarioController{
    private Result result;
    private UsuarioDao usuarioDao;
    private Validator validator;
    public UsuarioController(){}
    
    @Inject
    public UsuarioController(Result result, UsuarioDao usuarioDao, Validator validator){
        this.result = result;
        this.usuarioDao = usuarioDao;
        this.validator = validator;
    }
    
    @Get
    public void form(){}
    
    @IncludeParameters
    @Post
    public void adiciona(@Valid Usuario usuario){
        validator.onErrorRedirectTo(this).form();
        usuarioDao.adiciona(usuario);
        result.redirectTo(this).lista();
    }
    public void lista(){
        result.include("usuarios", usuarioDao.lista());
    }
}