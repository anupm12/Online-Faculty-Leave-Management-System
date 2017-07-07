
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%                           try{ String data1 = request.getParameter("id");
                                 Connection c=com.dbconnection.Loadconnection.getConnection();
                                 
                                 PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status=?");
                                 ps.setString(1,data1);
                                 int i=0;
                                 int row;
                                 JSONArray jarray= new JSONArray();
                                 PrintWriter Out= response.getWriter();
                                 
                                 ResultSet rs=ps.executeQuery();
                                 while(rs.next())   
                                 {    if(rs.getInt("notifyid")==0)
                                             { JSONObject jobject=new JSONObject();
                                               jobject.put("name", rs.getString("name"));
                                               jobject.put("appid", rs.getString("appid"));
                                               jobject.put("reason", rs.getString("reason"));
                                               jarray.put(jobject);              
                                              }
                                 
                                 
                                    
                                  }
                                // PreparedStatement psa = c.prepareStatement("UPDATE leaveapplication SET notifyid = 1");
                                // row=psa.executeUpdate();
                                 Out.println(jarray);       
                                }
                                           catch(Exception ex)
                                           { out.println(ex);
                                           }
  
%>