
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
         int id=Integer.parseInt( request.getParameter("id"));
         String status="rejected";     
               
               		Connection con=Loadconnection.getConnection();
			Statement st=con.createStatement();
		// PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'approved' order by appid DESC LIMIT 5 ");		
           //    int i=st.executeUpdate("update leaveapplication set status="+"'approved' where appid="+"'id'");
    //      update leaveapplication set status='approved' where appid='14';
                      //  int i=st.executeUpdate("update leaveapplication set status="+"'approved' where appid="+"'id'");
                     //   response.sendRedirect("index.jsp");
                         Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c); 
                        PreparedStatement ps = c.prepareStatement("update leaveapplication set status=? where appid=?");
 
            ps.setString(1,status);
           ps.setInt(2,id);
              
         
           int   rows=ps.executeUpdate();
           response.sendRedirect("index.jsp");
    %>
    
