/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatec.poo;

/**
 *
 * @author caio
 */
public class Pessoa {
    private String nome;
    private Pessoa pai;
    private Pessoa mae;
    private Data dataNascimento;

    public Pessoa(String nome, Data dataNascimento) {
        this.nome = nome;
        this.dataNascimento = dataNascimento;
    }

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public Pessoa getPai() {
        return pai;
    }

    public Pessoa getMae() {
        return mae;
    }

    public Data getDataNascimento() {
        return dataNascimento;
    }
    
    
    
    
    
    
    
    
}
