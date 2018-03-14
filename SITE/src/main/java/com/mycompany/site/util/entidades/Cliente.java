/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.site.util.entidades;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author aluno
 */
@Entity
public class Cliente {

    /**
     * @return the idusuario
     */
    public int getIdusuario() {
        return idusuario;
    }

    /**
     * @param idusuario the idusuario to set
     */
    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    /**
     * @return the nomecompleto
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nomecompleto the nomecompleto to set
     */
    public void setNome(String nomecompleto) {
        this.nome = nomecompleto;
    }

    /**
     * @return the sobrenome
     */
    public String getSobrenome() {
        return sobrenome;
    }

    /**
     * @param sobrenome the sobrenome to set
     */
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the senha
     */
    public String getSenha() {
        return senha;
    }

    /**
     * @param senha the senha to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    @Id
    @GeneratedValue(generator = "userpk", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "userpk", allocationSize = 1, sequenceName = "cliente_idusuario_seq")
    private int idusuario;
    @Column(name = "nomecliente")
    private String nome;    
    private String sobrenome;
    private String email;
    private String senha;
    

}

