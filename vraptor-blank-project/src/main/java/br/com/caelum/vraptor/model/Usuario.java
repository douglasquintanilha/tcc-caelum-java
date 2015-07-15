package br.com.caelum.vraptor.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Usuario  {
	@Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
	
    @NotEmpty
    private String login;
    
    @NotEmpty
    private String senha;
    
    @NotEmpty
    @Email
    private String email;
    // getters e setters
}