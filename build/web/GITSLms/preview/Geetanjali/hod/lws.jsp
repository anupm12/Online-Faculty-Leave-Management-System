<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%  
    
  String name=request.getParameter("name");
  String email=request.getParameter("email");
  String designation=request.getParameter("designation");
  String department=request.getParameter("department");
  String leavetype=request.getParameter("leavetype");
  String reason=request.getParameter("reason");
  
    String dfrom1=request.getParameter("datefrom");
    SimpleDateFormat dformat= new SimpleDateFormat("dd-mm-yyyy");
    java.util.Date dfrom2=dformat.parse(dfrom1);
    long timeinMillifrom=dfrom2.getTime();
    java.sql.Date datefrom=new java.sql.Date(timeinMillifrom);
    int generatedKey=0;
    String dto1=request.getParameter("dateto");
    SimpleDateFormat dto= new SimpleDateFormat("dd-mm-yyyy");
    java.util.Date dto2=dto.parse(dto1);
    long timeinMillito=dto2.getTime();
    java.sql.Date dateto=new java.sql.Date(timeinMillito);
    Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);
      try   { int rows=0;
             
             PreparedStatement ps = c.prepareStatement("insert into leaveapplication(name,email,designation,department,leavetype,reason,datefrom,dateto) values(?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);    
             ps.setString(1,name);
             ps.setString(2,email);
             ps.setString(3,designation);
             ps.setString(4,department);
             ps.setString(5,leavetype);
             ps.setString(6,reason);
             ps.setDate(7,datefrom);
             ps.setDate(8,dateto);
             ps.execute();
             ResultSet rs=ps.getGeneratedKeys();
             
             if(rs.next())
             { generatedKey=rs.getInt(1);
             }
           //  out.println(generatedKey);
             //response.sendRedirect("applyleave.jsp");
           } 
         catch(Exception e1)
         {System.out.println(e1);
         }  
            String leaveid=null;
            PreparedStatement ps = c.prepareStatement("select * from leaveapplication where appid=?"); 
               ps.setInt(1, generatedKey);
               ResultSet rs=ps.executeQuery();
               while(rs.next())
               {  leaveid=rs.getString("leaveid");
                 //out.println(i);
               }
           ps = c.prepareStatement("select count(*) from substitutetable");    
            // ps.execute();
            rs=ps.executeQuery();
             rs.next();
             int j=rs.getInt(1);
             
            String stringjarray=request.getParameter("array");
             ps = c.prepareStatement("insert into substitutetable(subsid,leaveid,applier,substitute,year,semester,slot,subject,date) values(?,?,?,?,?,?,?,?,?)");            
            JSONArray jarr= new JSONArray(stringjarray);
                for(int i=0;i<jarr.length();i++)
                    { 
                      String id="subs"+j;
                      JSONObject object=jarr.getJSONObject(i);
                      String year=object.getString("y");
                      String semester=object.getString("s");
                      String slot=object.getString("sl");
                      String date=object.getString("d");
                      String subject=object.getString("sub");
                      String substitute=object.getString("su");
                      out.println(year+semester+slot+date+subject+substitute);
                      ps.setString(1, id);
                      ps.setString(2, leaveid);
                      ps.setString(3, name);
                      ps.setString(4, substitute);
                      ps.setString(5, year);
                      ps.setString(6, semester);
                      ps.setString(7, slot);
                      ps.setString(8, subject);
                      ps.setString(9, date);
                      ps.addBatch();
                      j++;
                    }
                ps.executeBatch();
                response.sendRedirect("index.jsp");
%>