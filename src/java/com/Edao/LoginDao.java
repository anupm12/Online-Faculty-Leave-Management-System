package com.Edao;
import java.sql.*;
public class LoginDao {
    private static LoginDao id=null;
    public static LoginDao getInstance()
    {
    if(id==null)
        id=new LoginDao();
    return id;
    }
    
    public ResultSet verifylogin(com.vbean.LoginBean lb)
    {
        try {
            Connection c=com.dbconnection.Loadconnection.getConnection();
            PreparedStatement ps=c.prepareStatement("select * from staff where email=? and password=?");
            ps.setString(1,lb.getUsername());
            ps.setString(2,lb.getPassword());
            
            ResultSet rs=ps.executeQuery();
            return rs;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
    
}
