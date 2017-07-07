<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<jsp:useBean id="t3" class="com.vbean.AddfacultyBean"/>
<jsp:setProperty name="t3" property="*"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

       <%
            MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Dell\\Documents\\NetBeansProjects\\new LMS\\web\\GITSLms\\preview\\Geetanjali\\images",10*1024*1024 );
       String mail=m.getParameter("mail");
       String pass=m.getParameter("pass");
        String fullname=m.getParameter("fullname");
        String image=m.getOriginalFileName("image");
      int phone=Integer.parseInt( m.getParameter("phone"));
      String address=m.getParameter("address");
      String city=m.getParameter("city");
       String state=m.getParameter("state");
       String designation=m.getParameter("designation");
       String department=m.getParameter("department");
        String category=m.getParameter("category");
           String dob=m.getParameter("dob");
        String doj=m.getParameter("doj");
        String gender=m.getParameter("gender");
        
        out.println("uploaded successfully"+image);
      

        t3.setEmail(mail);
        t3.setPasword(pass);
        t3.setName(fullname);
        t3.setImage(image);
        t3.setMobile(phone);
        t3.setGender(gender);
        t3.setAddress(address);
        t3.setCity(city);
        t3.setState(state);
        t3.setDesignation(designation);
        t3.setDepartment(department);
        t3.setJoiningdate(doj);
        t3.setDob(dob);
        t3.setCategory(category);
     String str=t3.insert();
    if(str.equals("success"))
        response.sendRedirect("index.jsp");
    else
    {
        response.sendRedirect("../error.jsp");
    }
        

    %>
    
