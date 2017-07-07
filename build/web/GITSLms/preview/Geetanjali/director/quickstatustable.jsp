          <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<div class="col-lg-6 col-xs-12 col-sm-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption">
                                            <i class="icon-bubbles font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Leave Status</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#portlet_comments_1" data-toggle="tab"> Approved </a>
                                            </li>
                                            <li>
                                                <a href="#portlet_comments_2" data-toggle="tab"> Rejected </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="portlet_comments_1">
                                                <!-- BEGIN: Comments -->
                                                 <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                   //  PreparedStatement ps = c.prepareStatement("select * from leaveapplication order by appid DESC LIMIT 5");
                                                                    PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'approved' order by appid DESC LIMIT 5 ");
                                                                     int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; %> 
                                                <div class="mt-comments">
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="../assets/pages/media/users/avatar1.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author"><%=rs.getString("name") %></span>
                                                                
                                                            </div>
                                                            <div class="mt-comment-text"> Has Applied for leave. </div>
                                                            <div class="mt-comment-details">
                                                             <span class="mt-comment-status mt-comment-status-approved"><%=rs.getString("status") %></span>
                                                              <ul class="mt-comment-actions">
                                                                    
                                                                    <li>
                                                                        <a href="acceptreject.jsp">View</a>
                                                                    </li>
                                                                    
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                    
                                                </div>
                                                 <%}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                %>
                                                
                                                <!-- END: Comments -->
                                            </div>
                                            <div class="tab-pane" id="portlet_comments_2">
                                                <!-- BEGIN: Comments -->
                                                <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                    PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'rejected' order by appid DESC LIMIT 5 ");
                                                                //   PreparedStatement ps = c.prepareStatement("select * from leaveapplication ORDER BY name DESC LIMIT 5");

                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; %> 
                                                <div class="mt-comments">
                                                    <div class="mt-comment">
                                                        <div class="mt-comment-img">
                                                            <img src="../assets/pages/media/users/avatar4.jpg" /> </div>
                                                        <div class="mt-comment-body">
                                                            <div class="mt-comment-info">
                                                                <span class="mt-comment-author"><%=rs.getString("name") %></span>
                                                            </div>
                                                            <div class="mt-comment-text"> Has Applied for leave.. </div>
                                                            <div class="mt-comment-details">
                                                             <span class="mt-comment-status mt-comment-status-rejected"><%=rs.getString("status") %></span>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                   
             
                                                </div>
                                                <%}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                %>
                                                <!-- END: Comments -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>