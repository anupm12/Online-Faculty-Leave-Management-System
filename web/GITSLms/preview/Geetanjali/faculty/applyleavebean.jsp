<%@page import="java.sql.Date"%>
<%@page import="java.text.DateFormat"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<jsp:useBean id="t3" class="com.vbean.ApplyLeaveBean"/>
<jsp:setProperty name="t3" property="*"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            
// Date date=reformat.parse(request.getParameter("datefrom"));
//    Date date=reformat.parse(request.getParatmeter("datefrom")));
        String name=request.getParameter("name");
       String email=request.getParameter("email");
          String designation=request.getParameter("designation");
      String leavetype=request.getParameter("leavetype");
      String reason=request.getParameter("reason");
      String datefrom=request.getParameter("datefrom");
       String dateto=request.getParameter("dateto");
        String substitution=request.getParameter("substitution");
        String department=request.getParameter("department");
       
                  
                  out.println("uploaded successfully");
      
        t3.setName(name);
        t3.setEmail(email);
        t3.setDesignation(designation);
        t3.setLeavetype(leavetype);
        t3.setReason(reason);
        t3.setDatefrom(datefrom);
        t3.setDateto(dateto);
        t3.setSubstitution(substitution);
        t3.setDepartment(department);
     String str=t3.insert();
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
    
