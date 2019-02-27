/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conf;


import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author gustavoscipiao
 */
public class Conexao {

    public DriverManagerDataSource conectar() {
        //try {
        DriverManagerDataSource datasource = new DriverManagerDataSource();
        datasource.setDriverClassName("com.mysql.jdbc.Driver");
        datasource.setUrl("jdbc:mysql://localhost:8889/Spring");
        datasource.setUsername("root");
        datasource.setPassword("root");
        return datasource;
        //} catch (DataAccessException ex) {
        //  System.out.println(ex.getMessage().toUpperCase());
        // }
        //return new Driv

    }
}
