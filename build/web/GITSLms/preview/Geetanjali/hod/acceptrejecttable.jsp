           
                            <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                <div class="portlet light portlet-fit bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-red"></i>
                                            <span class="caption-subject font-red sbold uppercase">ACCEPT/REJECT Table</span>
                                        </div>
                                        
                                    </div>
                                    <div class="portlet-body">
                                        <div class="table-toolbar">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="btn-group">
                                                       
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <table class="table table-striped table-hover table-bordered" id="sample_editable_1">
                                            <thead>
                                                <tr>
                                                    <th> NAME </th>
                                                    <th> TYPE OF LEAVE </th>
                                                    <th> REASON </th>
                                                    <th> FROM </th>
                                                    <th> TO </th>
                                                    <th> ACCPET </th>
                                                    <th> REJECT </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                                         <%
                                                                try { String name=(String)session.getAttribute("name");
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                      String depart=(String)session.getAttribute("department");
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from leaveapplication where name<>? and department =? and status="+"'substitutes confirmed' "); 
                                                                      ps.setString(1, name);
                                                                      ps.setString(2, depart);
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; %>
                                                
                                                
                                                
                                                
                                                <<tr>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td class="center"><%=rs.getString("datefrom") %></td>
                                                    <td class="center"><%=rs.getString("dateto") %></td>
                                                    <td>
                                                       <button type="button" onclick="approved(this);" id="<%=rs.getString("appid")%>" class="btn btn-outline green btn-sm">Approve</button>
                                                    </td>
                                                    <td>
                                                        <button type="button" onclick="rejected(this);" id="<%=rs.getString("appid")%>" class="btn btn-outline red btn-sm">Reject</button>
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