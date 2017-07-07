
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%                           try{ Connection c=com.dbconnection.Loadconnection.getConnection();
                                 PreparedStatement ps = c.prepareStatement("select * from staff where (category=? or category=?) and name<>?");
                                 String category="Faculty";
                                 String hod="HOD";
                                 String name=(String)session.getAttribute("name");
                                 ps.setString(1,category);
                                 ps.setString(2,hod);
                                 ps.setString(3,name);
                                 
                                 
                                 int i=0;
                                 int row;
                                 JSONArray jarray= new JSONArray();
                                 PrintWriter Out= response.getWriter();
                                 
                                ResultSet rs=ps.executeQuery();
                                 while(rs.next())   
                                 {            JSONObject jobject=new JSONObject();
                                               jobject.put("name", rs.getString("name"));
                                               jarray.put(jobject);              
                                 }
                                out.println(jarray);
                                // Out.println(jarray);       
                                }
                                           catch(Exception ex)
                                           { out.println(ex);
                                           }
  
%>