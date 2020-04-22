/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Savindu.inventory.Entity;

import com.DB.Sales.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Savindu
 */
public class Category {

    private String id;
    private String catID;
    private String name;
    private String img;
    private String upload;
    private static ArrayList<String> categoriesList = new ArrayList<>();
    
    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        if(img != null){
            this.img = img; 
        }else{
            this.img = "Categories\\image-not-found.png";
        }
    }
    
    private Connection con;
    private String INSERT_SQL = "INSERT INTO `categories`(`cat_ID`, `cat_Name`, `cat_img`) VALUES (?, ?, ?)";
    private String SELCT_QUERY = "SELECT `id`, `cat_ID`, `cat_Name`, `cat_img`, `uploadedOn` FROM `categories`";
    private String UPDATE_SQL = "UPDATE `categories` SET `cat_ID`= ?,`cat_Name`= ?,`cat_img`= ? WHERE `id` = ?";
    private String DELETE_SQL = "DELETE FROM `categories` WHERE `id` = ?";
    
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUpload() {
        return upload;
    }

    public void setUpload(String upload) {
        this.upload = upload;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", catID=" + catID + ", name=" + name + ", img=" + img + ", upload=" + upload + ", con=" + con + ", INSERT_SQL=" + INSERT_SQL + ", SELCT_QUERY=" + SELCT_QUERY + '}';
    }

    
    
   public boolean save(Category category) throws SQLException{
        boolean state = false;
         
        try{
           // for(Products product : products){
               PreparedStatement preparedStatement = con.prepareStatement(INSERT_SQL);
        
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
   
   public ArrayList<Category> getCategories(){
        ArrayList<Category> categories = new ArrayList<>();
        Category category;
        ResultSet rs = null;
        
        try {
            PreparedStatement preparedStatement = con.prepareStatement(SELCT_QUERY);
            System.out.println(preparedStatement);
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                category = new Category();
                category.setId(rs.getString(1));
                category.setCatID(rs.getString(2));
                category.setName(rs.getString(3));
                this.setCategories(rs.getString(3));
                category.setImg(rs.getString(4));
                category.setUpload(rs.getString(5));
                //System.out.println(category.toString());
                categories.add(category);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Products.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return categories;
    }
    
   public boolean update(Category category) throws SQLException{
        boolean state = false;
         
        try{
           // for(Products product : products){
               PreparedStatement preparedStatement = con.prepareStatement(UPDATE_SQL);
        
               preparedStatement.setString(1, category.getCatID());          
               preparedStatement.setString(2, category.getName());
               preparedStatement.setString(3, category.getImg());
               preparedStatement.setString(4, category.getId());
               
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

    public void setCategories(String name){
        this.categoriesList.add(name);
    } 
    
    public ArrayList<String> getCategoriesList(){
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>(this.categoriesList);
        ArrayList<String> withoutDuplicates = new ArrayList<>(linkedHashSet);
        return withoutDuplicates;
    }
    
    public boolean remove(ArrayList<String> category) {
         boolean state = false;
         int result = 0;
        try{
           // for(Products product : products){
               PreparedStatement preparedStatement = con.prepareStatement(DELETE_SQL);
        
               for(int i=0; i<category.size(); i++){
                 preparedStatement.setString(1, category.get(i).toString());
                 System.out.println(preparedStatement);
               
                 result  = preparedStatement.executeUpdate();  
               }
               
               
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
