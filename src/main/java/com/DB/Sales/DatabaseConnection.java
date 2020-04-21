/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DB.Sales;

import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

/*
author @vidarshan adithya rathnayake - 20204837
date 21-04-2020
All credit for the relevant sources
*/
public class DatabaseConnection {
    
    private Connection con;
    private static DatabaseConnection dbc;
    private DatabaseConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("***************************************************************************************************************************************");
            System.out.println("Driver Loaded");
            System.out.println("***************************************************************************************************************************************");
            //***********************************************Do not change this database name. Exceptions handled
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unicenta", "root", "");
        } catch (Exception ex) {
            System.out.println(ex);
        }
 }
    public static DatabaseConnection getDatabaseConnection(){
        if(dbc==null){
            dbc = new DatabaseConnection();
        }
        return dbc;
    }
    
    public Connection getConnection(){
        return con;
    }

}
