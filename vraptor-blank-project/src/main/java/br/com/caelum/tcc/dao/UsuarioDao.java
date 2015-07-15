package br.com.caelum.tcc.dao;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.model.Usuario;

@RequestScoped
public class UsuarioDao {
		
	private EntityManager manager;
	
	@Inject
	public UsuarioDao (EntityManager manager){
		
		this.manager = manager; 
	}
	
	public UsuarioDao(){}
	
	public void adiciona(Usuario usuario){
		manager.getTransaction().begin();
		manager.persist(usuario);
		manager.getTransaction().commit();
	}
	
}
