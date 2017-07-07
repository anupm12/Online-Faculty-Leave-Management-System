package com.vbean;
import java.sql.*;
public  class LoginBean
{
private String Username;
private String password;

     public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   
    
    
    public String validate()
    {
            try
            {

            ResultSet rs=com.Edao.LoginDao.getInstance().verifylogin(this);
            if(rs.next())
            {
                String cat=rs.getString("category");
                if(cat.equals("admin"))
                    return "admin";
                if (cat.equals("Faculty"))
                    return "Faculty";
                if (cat.equals("director"))
                    return "director";
               
                else
                    return "HOD";
            }
            else
            {
            return "login";
            }
            }
            catch(Exception e1)
            {System.out.println(e1); 
            return "error"; }
    }

   
}