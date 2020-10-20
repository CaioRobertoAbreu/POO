/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.java.db;

import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Collections;

/**
 *
 * @author caio
 */
public class Conector {
    private static final String CLASS_NAME = "org.sqlite.JDBC";
    private static final String URL = "jdbc:sqlite:/home/caio/Área de Trabalho/poo";
    
    public static List<String> select() throws Exception {
        
        List<String> lista = new ArrayList<>();
        Class.forName(CLASS_NAME);
        Connection conexao = DriverManager.getConnection(URL);
        Statement statment = conexao.createStatement();
        ResultSet executeQuery = statment.executeQuery("SELECT * FROM DISCIPLINA");
        
        while(executeQuery.next()) {
            lista.add(executeQuery.getString("nome"));
        }
        Collections.sort(lista);
        executeQuery.close();
        statment.close();;
        conexao.close();
       
        return lista;
    }
    
}
