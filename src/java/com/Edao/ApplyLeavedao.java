/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Edao;

import java.sql.Connection;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

/**
 *
 * @author Dell
 */
public class ApplyLeavedao {
    private static ApplyLeavedao ld=null;
    public static ApplyLeavedao getInstance()
    {
    if(ld==null)
    ld=new ApplyLeavedao();
    return ld;
    }

    
    
     public int insertRecord(com.vbean.ApplyLeaveBean lb)
    {
       int rows=0;
        int row=0;
          try { Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);
           String type=(String)lb.getLeavetype();
          PreparedStatement psa = c.prepareStatement("UPDATE staff SET "+type+"="+type+"-1 where email=?");

    psa.setString(1, lb.getEmail());
    row=psa.executeUpdate();
  PreparedStatement ps = c.prepareStatement("insert into leaveapplication(name,email,designation,leavetype,reason,datefrom,dateto,substitution,department) values(?,?,?,?,?,?,?,?,?)");
  SimpleDateFormat dformat= new SimpleDateFormat("dd-mm-yyyy");
  String dfrom1=lb.getDatefrom();
    java.util.Date dfrom2=dformat.parse(dfrom1);
    long timeinMillifrom=dfrom2.getTime();
    java.sql.Date datefrom=new java.sql.Date(timeinMillifrom);

    SimpleDateFormat dto= new SimpleDateFormat("dd-mm-yyyy");
    String dto1=lb.getDatefrom();
    java.util.Date dto2=dto.parse(dto1);
    long timeinMillito=dto2.getTime();
    java.sql.Date dateto=new java.sql.Date(timeinMillito);

  ps.setString(1,lb.getName());

          ps.setString(2,lb.getEmail());
            ps.setString(3,lb.getDesignation());
                 ps.setString(4,lb.getLeavetype());
              ps.setString(5,lb.getReason());
                 ps.setDate(6,datefrom);
                 ps.setDate(7,dateto);
                ps.setString(8,lb.getSubstitution());
                ps.setString(9,lb.getDepartment());
               
              rows=ps.executeUpdate();
       return rows;   
       }catch(Exception e1){System.out.println(e1);
       System.out.print("error catch1111ss");
       return rows;
        }
       
    }

    
}
