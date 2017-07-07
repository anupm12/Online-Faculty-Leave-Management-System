/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Edao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author Dell
 */
public class Addfacultydao {
    
private static Addfacultydao ld=null;
    public static Addfacultydao getInstance()
    {
    if(ld==null)
    ld=new Addfacultydao();
    return ld;
    }

    
    
     public int insertRecord(com.vbean.AddfacultyBean lb)
    {
       int rows=0;
     
          try {
   Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);
  PreparedStatement ps = c.prepareStatement("insert into staff(email,password,name,mobile,gender,address,city,state,designation,department,joiningdate,dob,category,image) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
 SimpleDateFormat djoin= new SimpleDateFormat("dd-mm-yyyy");
    String datejoin=lb.getJoiningdate();
    java.util.Date dto2=djoin.parse(datejoin);
    long timeinMillito=dto2.getTime();
    java.sql.Date Joiningdate =new java.sql.Date(timeinMillito);
  
            ps.setString(1,lb.getEmail());
           ps.setString(2,lb.getPasword());
            ps.setString(3,lb.getName());
            ps.setInt(4,lb.getMobile());            
            ps.setString(5,lb.getGender());
            ps.setString(6,lb.getAddress());
             ps.setString(7,lb.getCity());
              ps.setString(8,lb.getState());
                 ps.setString(9,lb.getDesignation());
                 ps.setString(10,lb.getDepartment());
              ps.setDate(11,Joiningdate);
                 ps.setString(12,lb.getDob());
                 ps.setString(13,lb.getCategory());
                 ps.setString(14,lb.getImage());
              
         
              rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){
       System.out.print("error catch1111ss "+ e1);
       return rows;
        }
       
    }
     
     public ArrayList removecart(int index,ArrayList al)
	{
		al.remove(index);
		return al;
		
	}


public int updateRecord(com.vbean.AddfacultyBean lb,int id)
    {
       int rows=0;
     
          try {
   Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);
  PreparedStatement ps = c.prepareStatement("update staff set email=?,password=?,name=?,mobile=?,gender=?,address=?,city=?,state=?,designation=?,department=?,joiningdate=?,dob=?,category=? where eid=?");
 // PreparedStatement ps = c.prepareStatement("insert into mens(model,size,price) values (?,?,?)");
  
            ps.setString(1,lb.getEmail());
           ps.setString(2,lb.getPasword());
            ps.setString(3,lb.getName());
            
            ps.setInt(4,lb.getMobile());
            
            ps.setString(5,lb.getGender());
                      
             ps.setString(6,lb.getAddress());
             ps.setString(7,lb.getCity());
              ps.setString(8,lb.getState());
                 ps.setString(9,lb.getDesignation());
                 ps.setString(10,lb.getDepartment());
              ps.setString(11,lb.getJoiningdate());
                 ps.setString(12,lb.getDob());
                 ps.setString(13,lb.getCategory());
             ps.setInt(14,id);
         
              rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){System.out.println(e1);
       System.out.print("error");
       return rows;
        }
       
    }

}