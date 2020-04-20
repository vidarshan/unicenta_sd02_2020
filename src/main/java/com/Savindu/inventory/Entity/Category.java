/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Savindu.inventory.Entity;

import com.DB.Sales.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Savindu
 */
public class Category {

    
    private String catID;
    private String name;
    private String img;

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    private Connection con;
    private String INSERT_USERS_SQL = "INSERT INTO `categories`(`cat_ID`, `cat_Name`, `cat_img`) VALUES (?, ?, ?)";
        
     public Category() {
         DatabaseConnection dbc = DatabaseConnection.getDatabaseConnection();
         con = dbc.getConnection();
    }
     
    public String getCatID() {
        return catID;
    }

    public void setCatID(String catID) {
        this.catID = catID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
   public boolean save(Category category) throws SQLException{
        boolean state = false;
         
        try{
           // for(Products product : products){
               PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL);
        
               preparedStatement.setString(1, category.getCatID());          
               preparedStatement.setString(2, category.getName());
               preparedStatement.setString(3, category.getImg());
               
               System.out.println(preparedStatement);
               
               int result = preparedStatement.executeUpdate();
               
               if(result > 0){
                   state = true;
               }else{
                   state = false;
               }
            //}
        }catch(Exception e){
            System.out.println(e);
        }
        
       return state;
    }
    
}
