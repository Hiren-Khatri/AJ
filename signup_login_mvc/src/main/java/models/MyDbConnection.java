/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author KHATRI
 */
public class MyDbConnection {
    
    private UserDetails userDetails;
    private String url;
    private String dbName;
    private String dbPass;
   public MyDbConnection(String url,String dbName,String dbPass,String uname,String upass) {
       userDetails = new UserDetails();
       userDetails.setFormData(uname, upass);
       this.url = url;
       this.dbName = dbName;
       this.dbPass = dbPass;
   }
   public Connection makeConnection(String url,String dbName,String dbPass) throws ClassNotFoundException, SQLException{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myCon = DriverManager.getConnection(this.url,this.dbName,this.dbPass);
            return myCon;
           }
   
   public UserDetails getInstance(){
        return this.userDetails;
       
    }
}
