<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
   
try   { 
         //count rows    
         //    PreparedStatement ps = c.prepareStatement("select count(*) from staff");    
         //    ps.execute();
         //    ResultSet rs=ps.executeQuery();
         //    rs.next();
         //    int i=rs.getInt(1);
        //     String id="sub"+rs.getInt(1);
       //      out.println(id);
             
              Connection c=com.dbconnection.Loadconnection.getConnection();
           //   PreparedStatement ps = c.prepareStatement("select * from staff");
              PreparedStatement ps = c.prepareStatement("select * from leaveapplication where appid=?"); 
               ps.setInt(1, 56);
               ResultSet rs=ps.executeQuery();
               while(rs.next())
               { String i=rs.getString("leaveid");
                 out.println(i);
               }
             

             
             //response.sendRedirect("applyleave.jsp");
           } 
         catch(Exception e1)
         {out.println("error lol");
         }    
    
    

%>