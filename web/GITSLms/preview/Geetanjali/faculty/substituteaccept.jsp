
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
         String id=( request.getParameter("id"));
        //     String id="subs0";
               
   	    Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c); 
            PreparedStatement ps = c.prepareStatement("update substitutetable set decisiveid=? where subsid=?");
            ps.setInt(1,1);
            ps.setString(2, id);
            int   rows=ps.executeUpdate();
            ps = c.prepareStatement("select * from substitutetable where subsid=? ");
            ps.setString(1, id);
            String leaveid=null;
            String applier=null;
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                leaveid=rs.getString("leaveid");
                applier=rs.getString("applier");
            }
            String designationapllier=null;
            ps = c.prepareStatement("select * from leaveapplication where leaveid=? ");
            ps.setString(1, leaveid);
            rs=ps.executeQuery();
            while(rs.next())
            { designationapllier=rs.getString("designation");
            }
            ps = c.prepareStatement("select * from substitutetable where leaveid=? ");
            ps.setString(1, leaveid);
            rs=ps.executeQuery();
            int count=0,decisivecount=0;
            while(rs.next())
            { count++;
                if(rs.getInt("decisiveid")==1)
                {
                    decisivecount++;
                }
            }
            
            
            // out.println("count:"+count+"decisive:"+decisivecount);
            if(count==decisivecount)
            {   if(designationapllier.equals("HOD"))
                { String status="recommended";
                    ps = c.prepareStatement("update leaveapplication set status=? where leaveid=?");
                    ps.setString(1,status);
                    ps.setString(2,leaveid);
                    rows=ps.executeUpdate();
                }
                else
                {   String status="substitutes confirmed";
                    ps = c.prepareStatement("update leaveapplication set status=? where leaveid=?");
                    ps.setString(1,status);
                    ps.setString(2,leaveid);
                    rows=ps.executeUpdate();
            
                
                }//out.println("done");
            }
                    ps = c.prepareStatement("insert into notification_table(sender,receiver,message,appsubid) values(?,?,?,?)");  
                    ps.setString(1, (String)session.getAttribute("name"));
                    ps.setString(2, applier);
                    ps.setString(3, "Has accepted substitution");
                    ps.setString(4, id);
                    ps.execute();
           
           response.sendRedirect("index.jsp");
    %>
    
