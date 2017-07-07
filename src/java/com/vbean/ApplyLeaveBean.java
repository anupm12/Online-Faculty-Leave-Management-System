/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vbean;

import java.util.Date;

/**
 *
 * @author Dell
 */
public class ApplyLeaveBean {
      private String name;
     private String email;
    private String designation;
    private String leavetype;
    private String reason;
    private String datefrom;
     private String dateto;
     private String substitution;
     private String department;

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDatefrom() {
        return datefrom;
    }

    public void setDatefrom(String datefrom) {
        this.datefrom = datefrom;
    }

      

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getLeavetype() {
        return leavetype;
    }

    public void setLeavetype(String leavetype) {
        this.leavetype = leavetype;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    

    public String getDateto() {
        return dateto;
    }

    public void setDateto(String dateto) {
        this.dateto = dateto;
    }

    public String getSubstitution() {
        return substitution;
    }

    public void setSubstitution(String substitution) {
        this.substitution = substitution;
    }
      
        public String insert()
{
    try
    {
        int rows=com.Edao.ApplyLeavedao.getInstance().insertRecord(this);
        if(rows>0)
        {  
            return "success";
        }
        else
        {
          
            return "error";
        }
    } catch(Exception e1){
        {
            return "error";
            
        }
     }		
    }
}
