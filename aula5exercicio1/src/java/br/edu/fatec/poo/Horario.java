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
public class Horario {
    private int hora;
    private int minuto;
    private int segundo;
    
    public Horario(int hora, int minuto, int segundo) {
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    } 
    
    public String getHorario() {
        return this.hora + ":" + this.minuto + ":" + this.segundo;
    }
    
    public int getHora() {
        return this.hora;
    }

    public int getMinuto() {
        return minuto;
    }

    public int getSegundo() {
        return segundo;
    }

    public void setHora(int hora) {
        this.hora = hora;
    }

    public void setMinuto(int minuto) {
        this.minuto = minuto;
    }

    public void setSegundo(int segundo) {
        this.segundo = segundo;
    }
    
    
}
