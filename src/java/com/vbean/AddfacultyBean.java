/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.vbean;

/**
 *
 * @author Dell
 */
public class AddfacultyBean {
     private String email;
     private String pasword;
     private String name;
      private String image;
     private int mobile;

   
    private String gender;
    private String address;
     private String city;
        private String state;
        private String designation;
         private String department;
     private String dob;
        private String joiningdate;
        private String category;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getJoiningdate() {
        return joiningdate;
    }

    public void setJoiningdate(String joiningdate) {
        this.joiningdate = joiningdate;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
        
    
     public String insert()
{
    try
    {
        int rows=com.Edao.Addfacultydao.getInstance().insertRecord(this);
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
     
     
      public String update(int id)
{
     
    try
    {
        int rows=com.Edao.Addfacultydao.getInstance().updateRecord(this,id);
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
