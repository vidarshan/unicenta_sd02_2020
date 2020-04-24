/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DB.Sales;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import java.util.ArrayList;
import org.apache.ibatis.jdbc.ScriptRunner;

/*
author @vidarshan adithya rathnayake - 20204837
date 21-04-2020
All credit for the relevant sources
*/
public class DatabaseConnection {
    
    private Connection con;
    private static DatabaseConnection dbc;
    private ArrayList<String> tbls = new ArrayList<>();
    
    private String SQLSCRIPT = "Database\\unicenta.sql";
    
    private DatabaseConnection() throws SQLException{
        tbls.add("categories");
        tbls.add("products");
        tbls.add("sales");
        tbls.add("salesbucket");
        tbls.add("salesrecords");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("***************************************************************************************************************************************");
            System.out.println("Driver Loaded");
            System.out.println("***************************************************************************************************************************************");
            //***********************************************Do not change this database name. Exceptions handled
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/unicenta", "root", "");
        } catch (Exception ex) {
            System.out.println(ex);
        }finally{
            createTables();
        }
 }
    public static DatabaseConnection getDatabaseConnection(){
        if(dbc==null){
            try {
                dbc = new DatabaseConnection();
            } catch (SQLException ex) {
                Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return dbc;
    }
    
    public Connection getConnection(){
        return con;
    }
    
    private void createTables() throws SQLException {
        boolean st = true;
        try{
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Show tables");
            System.out.println("Tables in the current database: ");
            while(rs.next()) {
               if( this.tbls.contains(rs.getString(1).toLowerCase()) ){
                   st = st && true;
               }else{
                   st = st && false;
               }
               System.out.print(rs.getString(1));
               System.out.println();
            }
        }catch(Exception e){
            
        }
        
        if(st == false){
             
          ScriptRunner sr = new ScriptRunner(this.con); 
          
          File tmpDir = new File(this.SQLSCRIPT);
            boolean exists = tmpDir.exists();
            if(exists){
           
              try {
               Reader   reader = new BufferedReader(new FileReader(this.SQLSCRIPT));
               sr.runScript(reader);
               System.out.println("DATABASE CREATED");
              } catch (FileNotFoundException ex) {
                  Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
              }
             
            }
        }
}

}
