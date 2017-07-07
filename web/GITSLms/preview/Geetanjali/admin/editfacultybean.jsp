<% String category=(String)session.getAttribute("cat");
  
   session= request.getSession(false);
if(session == null)
{
response.sendRedirect("../Login.jsp");
    
}
else if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
   response.sendRedirect("../Login.jsp");
}
else if (!(category).equals("admin")) {
   response.sendRedirect("../Login.jsp");} 

%><%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<jsp:useBean id="t3" class="com.vbean.AddfacultyBean"/>
<jsp:setProperty name="t3" property="*"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            int id=Integer.parseInt( request.getParameter("id"));
       String mail=request.getParameter("email");
       String pass=request.getParameter("password");
        String fullname=request.getParameter("fullname");
      int phone=Integer.parseInt( request.getParameter("phone"));
      String address=request.getParameter("address");
      String city=request.getParameter("city");
       String state=request.getParameter("state");
       String designation=request.getParameter("designation");
       String department=request.getParameter("department");
        String category=request.getParameter("category");
           String dob=request.getParameter("dob");
        String doj=request.getParameter("doj");
        String gender=request.getParameter("gender");
        
        out.println("uploaded successfully");
      

    t3.setEmail(mail);
    t3.setPasword(pass);
        t3.setName(fullname);
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
     String str=t3.update(id);
    if(str.equals("success"))
        response.sendRedirect("index.jsp");
    else
    {
        response.sendRedirect("../error.jsp");
    }
        
       /* if(mail!=null){
           // out.println("email:"+mail+"  pass"+pass+fullname+phone+address+city+state+designation+department+category+dob+doj+gender);
            String string = "2012-12-31"; //You have like this now

            DateFormat formatter = new SimpleDateFormat("dd-mm-yyyy");
            Date date = formatter.parse(dob);
 
            out.println(date);    
        }
        else
            {
            out.println("null");
        }*/
    %>
    
