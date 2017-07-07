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

%><%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
         int id=Integer.parseInt( request.getParameter("id"));
               
               
               		Connection con=Loadconnection.getConnection();
			Statement st=con.createStatement();
				
               int i=st.executeUpdate("delete from staff where eid="+id+"");
          response.sendRedirect("removefaculty.jsp");
    %>
    
