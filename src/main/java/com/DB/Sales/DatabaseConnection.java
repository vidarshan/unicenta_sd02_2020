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
//    private String CATEGORIES_CREATE = " CREATE TABLE IF NOT EXISTS `categories` (" +
//                                    "  `id` int(11) NOT NULL," +
//                                    "  `cat_ID` varchar(255) DEFAULT NULL," +
//                                    "  `cat_Name` varchar(255) NOT NULL," +
//                                    "  `cat_img` text DEFAULT NULL," +
//                                    "  `uploadedOn` datetime NOT NULL DEFAULT current_timestamp()" +
//                                    ") ENGINE=InnoDB DEFAULT CHARSET=latin1;";
//    
//    private String PRODUCTS_CREATE = "CREATE TABLE IF NOT EXISTS `products` (" +
//                                    "  `productID` int(11) NOT NULL," +
//                                    "  `name` varchar(255) DEFAULT NULL," +
//                                    "  `barcode` varchar(255) DEFAULT NULL," +
//                                    "  `category` varchar(255) DEFAULT NULL," +
//                                    "  `description` text DEFAULT NULL," +
//                                    "  `img` text DEFAULT NULL," +
//                                    "  `uploadedOn` datetime NOT NULL DEFAULT current_timestamp()" +
//                                    ") ENGINE=InnoDB DEFAULT CHARSET=latin1;";
//                                    
//     private String SALES_CREATE = "CREATE TABLE IF NOT EXISTS `sales` (" +
//                                    "  `id` int(11) NOT NULL," +
//                                    "  `product_name` varchar(255) NOT NULL," +
//                                    "  `product_price` varchar(10) NOT NULL," +
//                                    "  `product_quantity` int(255) NOT NULL," +
//                                    "  `sales_value` varchar(255) NOT NULL," +
//                                    "  `tax` int(10) NOT NULL," +
//                                    "  `commision` varchar(50) NOT NULL" +
//                                    ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
//     
//    private String SALES_CREATE = "CREATE TABLE IF NOT EXISTS `salesbucket` (" +
//                                    "  `id` int(11) NOT NULL," +
//                                    "  `date` varchar(15) NOT NULL," +
//                                    "  `time` varchar(15) NOT NULL," +
//                                    "  `grand_total` longtext NOT NULL" +
//                                    ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
    
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
        boolean st = false;
        try{
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("Show tables");
            System.out.println("Tables in the current database: ");
            while(rs.next()) {
               if( this.tbls.contains(rs.getString(1).toLowerCase()) ){
                   st = true;
               }else{
                   st = false;
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
