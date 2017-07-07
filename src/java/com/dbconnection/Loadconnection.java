package com.dbconnection;
import java.sql.*;
public class Loadconnection {
    private static Connection con=null;
    public static Connection getConnection()
    {
        try {
           
            if(con==null)
            {
                // Class.forName(driver);
                //con=DriverManager.getConnection(url,user,password);
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gitslms","root","root");
            }
            return con;
        } catch (Exception e) {
            return con;
        }
    }
    
}
