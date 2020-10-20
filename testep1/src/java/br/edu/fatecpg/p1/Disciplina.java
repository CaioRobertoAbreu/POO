/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.p1;

import java.util.ArrayList;
import java.util.List;

public class Disciplina {
    private String nome;
    private String ementa;
    private Integer ciclo;
    private Double nota;
    private static final List<Disciplina> todasDisciplinas = new ArrayList();

    public Disciplina(String nome, String ementa, Integer ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        todasDisciplinas.add(this);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Integer getCiclo() {
        return ciclo;
    }

    public void setCiclo(Integer ciclo) {
        this.ciclo = ciclo;
        todasDisciplinas.remove(this);
        todasDisciplinas.add(this);
    }

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }
    
    public static List<Disciplina> getList() {
        todasDisciplinas.sort((d1, d2) -> d1.getNome().compareTo(d2.getNome()));
        return todasDisciplinas;
    }
    
}
