/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Savindu.inventory.Entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import com.DB.Sales.DatabaseConnection;
/**
 *
 * @author Savindu
 */
public class Products {
    
    private String barcode;
    private String name;
    private String category;
    private String img;
    private String description;

    private Connection con;
    private String INSERT_USERS_SQL = "INSERT INTO `products` (`name`, `barcode`, `category`, `description`, `img`) VALUES (?, ?, ?, ?, ?)";
        
    public Products() {
        DatabaseConnection dbc = DatabaseConnection.getDatabaseConnection();
        con = dbc.getConnection();
    }
    
    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "Products{" + "barcode=" + barcode + ", name=" + name + ", category=" + category + ", img=" + img + ", description=" + description + ", con=" + con + '}';
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDesc() {
        return description;
    }

    public void setDesc(String desc) {
        this.description = desc;
    }
    
    public boolean save(Products product) throws SQLException{
            boolean state = false;
         
        try{
           // for(Products product : products){
               PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL);
        
               preparedStatement.setString(1, product.getName());          
               preparedStatement.setString(2, product.getBarcode()); 
               preparedStatement.setString(3, product.getCategory()); 
               preparedStatement.setString(4, product.getDesc()); 
               preparedStatement.setString(5, product.getImg()); 
            
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
