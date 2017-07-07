
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
         String id=( request.getParameter("id"));
              
         Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c); 
            PreparedStatement ps = c.prepareStatement("update substitutetable set decisiveid=? where subsid=?");
            ps.setInt(1,2);
            ps.setString(2, id);
            int   rows=ps.executeUpdate();
            ps = c.prepareStatement("select * from substitutetable where subsid=? ");
            ps.setString(1, id);
            String leaveid=null;
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                leaveid=rs.getString("leaveid");
            }
            String status="substitution denied";
                ps = c.prepareStatement("update leaveapplication set status=? where leaveid=?");
                ps.setString(1,status);
                ps.setString(2,leaveid);
                rows=ps.executeUpdate();
               
            response.sendRedirect("index.jsp");
    %>
    
