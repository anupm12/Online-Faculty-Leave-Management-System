           
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                                                    <th> DAYS </th>
                                                    <th> ACCPET </th>
                                                    <th> REJECT </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                                         <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'recommended' "); 
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++;           //datefrom yyyy-MM-dd to dd-MM-yyyy
                                                            String fromst=rs.getString("datefrom");
                                                            Date dfromf=new SimpleDateFormat("yyyy-MM-dd").parse(fromst);
                                                            String formatfrom=new SimpleDateFormat("dd-MM-yyyy").format(dfromf);
                                                            //dateto yyyy-MM-dd to dd-MM-yyyy
                                                            String tost=rs.getString("dateto");
                                                            Date dtof=new SimpleDateFormat("yyyy-MM-dd").parse(tost);
                                                            String formatto=new SimpleDateFormat("dd-MM-yyyy").format(dtof);
                                                            //days between 2 dyas 
                                                              String tostr=rs.getString("dateto");
                                                              String fromstr=rs.getString("datefrom");
                                                              Date dto=new SimpleDateFormat("yyyy-mm-dd").parse(tostr);
                                                              Date dfrom=new SimpleDateFormat("yyyy-mm-dd").parse(fromstr);
                                                              long milli=dto.getTime()-dfrom.getTime();
                                                              long days=milli/(1000*60*60*24);
                                                                         %>
                                                
                                                
                                                
                                                
                                                <<tr>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>  
                                                    <td> <%=days %> </td>
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