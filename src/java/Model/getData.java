package Model;


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Computer
 */
public class getData {

    public Connection getConnect() {
        Connection con=null;
        try {
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=BanTour;instanceName=COMPUTER-PC\\SQLEXPRESS";
            con = DriverManager.getConnection(url, "sa", "123");
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return con;
    }
}
