  <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<div class="col-lg-6 col-xs-12 col-sm-12">
                                <div class="portlet light bordered">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption">
                                            <i class=" icon-social-twitter font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Pending request</span>
                                        </div>
                                        <ul class="nav nav-tabs">
                                            <li class="active">
                                                <a href="#tab_actions_pending" data-toggle="tab"> Pending </a>
                                            </li>
                                            
                                        </ul>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab_actions_pending">
                                                <!-- BEGIN: Actions -->
                                                <div class="mt-actions">
                                                    <%
                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                    PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'recommended' order by appid DESC LIMIT 5 ");
                                                                //   PreparedStatement ps = c.prepareStatement("select * from leaveapplication ORDER BY name DESC LIMIT 5");

                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; %> 
                                                    <div class="mt-action">
                                                        <div class="mt-action-img">
                                                            <img src="../assets/pages/media/users/avatar9.jpg" /> </div>
                                                        <div class="mt-action-body">
                                                            <div class="mt-action-row">
                                                                <div class="mt-action-info ">
                                                                    <div class="mt-action-icon ">
                                                                        <i class="icon-magnet"></i>
                                                                    </div>
                                                                    <div class="mt-action-details ">
                                                                        <span class="mt-action-author"><%=rs.getString("name") %></span>
                                                                        <p class="mt-action-desc">Pending for approval</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-action-datetime ">
                                                                    <span class="mt-action-dot bg-green"></span>
                                                                    <span class="mt action-time"><%=rs.getString("leavetype") %></span>
                                                                </div>
                                                                <div class="mt-action-buttons ">
                                                                    <div class="btn-group btn-group-circle">
                                                                        <button type="button" onclick="approved(this);" id="<%=rs.getString("appid")%>" class="btn btn-outline green btn-sm">Approve</button> 
                                                       <!-- <input type="button" name="approve" value="approve" style="background-color:green;font-weight:bold;color:white;" > -->

                                                                        <button type="button" onclick="rejected(this);" id="<%=rs.getString("appid")%>" class="btn btn-outline red btn-sm">Reject</button>
                                                                    </div>
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
                                                </div>
                                                <!-- END: Actions -->
                                            </div>
                
                                        </div>
                                    </div>
                                </div>
                            </div>