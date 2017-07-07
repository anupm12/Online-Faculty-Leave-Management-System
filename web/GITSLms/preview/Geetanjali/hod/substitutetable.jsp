<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

 

<div class="row">
                                <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                
                                
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-red"></i>
                                            <span class="caption-subject font-red sbold uppercase">ACCEPT / REJECT Table</span>
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body">
                                        
                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>
                                                    <th> LEAVE ID </th>
                                                    <th> APPLIER </th>
                                                    <th> SUBJECT </th>
                                                    <th> YEAR </th>
                                                    <th> SEMESTER </th>
                                                    <th> SLOT </th>
                                                    <th> DATE </th>
                                                    <th> ACCPET </th>
                                                    <th> REJECT </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                                         <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from substitutetable where substitute=? and decisiveid=? "); 
                                                                      ps.setString(1,(String)session.getAttribute("name"));
                                                                      ps.setInt(2, 0);
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; %>         
                                                
                                                <tr>
                                                    <td> <%=rs.getString("leaveid") %> </td>
                                                    <td> <%=rs.getString("applier") %> </td>
                                                    <td> <%=rs.getString("subject") %> </td>
                                                    <td><%=rs.getString("year") %></td>
                                                    <td><%=rs.getString("semester") %></td>
                                                    <td><%=rs.getString("slot") %></td>
                                                    <td><%=rs.getString("date") %></td>
                                                   
                                                    <td>
                                                       <button type="button" onclick="approved(this);" id="<%=rs.getString("subsid")%>" class="btn btn-outline green btn-sm">Approve</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" onclick="rejected(this);" id="<%=rs.getString("subsid")%>" class="btn btn-outline red btn-sm">Reject</button>
                                                    </td>
                                                </tr>
                                                  <%}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                %>
                                              
                                                
                                                
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                             
                         </div>
