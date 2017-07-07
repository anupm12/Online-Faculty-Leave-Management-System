 <%@page import="java.sql.ResultSet"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!-- BEGIN HEADER -->
              <script type="text/javascript">
    // setInterval(hell(),500);   
 /*    function hell(){ 
                 $.ajax({
                   //  url:'notification.jsp',
                     data:{name:'abc'},
                     type:'get',
                     dataType:'json',
                     cache:false,
                     success:function(data)
                     {  var i=0;
                        $("#ullocation").empty(); 
                        $.each(data,function(){
                           i++;
                         $("#ullocation").append('<li class="list-group-item active" onclick="helpme(this)"' +'id=btSubmit value='+this['id']+'><span>'+this['sender']+'</span><br><span>'+this['message']+'</span></li>');
                         $("#badge").empty();
                         
                         $("#badge").append(this['badge']);
                        });
                         
                               
                     },
                     error:function()
                     {
                         alert("error");
                     }
                     
                 });
    
               }
               
              setInterval(hell,1000);
              function helpme(t)
              { var val=t.value;
                  alert(val);
              }*/
              function hello(){
                  var badge=document.getElementById('badge');
                   
                 badge.style.visibility= 'hidden';
                 };
 
              
              
              </script>
    
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="index.html">
                            
                           <!-- <img src="../assets/layouts/layout/img/logo.png" alt="logo" class="logo-default" /> </a> -->
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN INBOX DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
                                     <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                         <i class="icon-envelope-open" id="notification" onclick="hello()"></i>
                                                      <span class="badge badge-default" id="badge"></span>
                                                     </a>
                                        </a>
                                    <ul class="dropdown-menu">
                                    <li class="external">
                                         
                                        <h3>You have
                                            <span class="bold">New</span> Messages</h3>
                                      <!--  <a href="app_inbox.html">view all</a> -->
                                    </li>
                                    <li>
                                    <br>
                                            
                                        
                                        
                                        <ul class="dropdown-menu-list scroller" style="height: 275px;" id="ullocation" data-handle-color="#637283">
                                                                                        
                                        </ul>
                                           
                                                
                                    </li>
                                </ul>    
                            </li>
                            <!-- END INBOX DROPDOWN -->
                            <!-- BEGIN TODO DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <!-- END TODO DROPDOWN -->
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->

                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="../assets/layouts/layout/img/avatar3_small.jpg" />
                                    <span class="username username-hide-on-mobile"> <%=session.getAttribute("name")%> </span>
                                    
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a class="hello">
                                            <i class="icon-user"></i> My Profile </a>
                                    </li>
                                    <li>
                                        <a href="app_calendar.html">
                                            <i class="icon-calendar"></i> My Calendar </a>
                                    </li>
                                    <li class="divider"> </li>
                                    <li>
                                        <a href="page_user_lock_1.html">
                                            <i class="icon-lock"></i> Lock Screen </a>
                                    </li>
                                    <li>
                                        <a  href="../logout.jsp">
                                            <i class="icon-key"></i> Log Out </a>
                                    </li>
                                </ul>
                            </li>
                            <!-- END USER LOGIN DROPDOWN -->
                            <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                            <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                            <li class="dropdown dropdown-quick-sidebar-toggler">
                                <a href="javascript:;" class="dropdown-toggle">
                                    <i class="icon-logout"></i>
                                </a>
                            </li>
                            <!-- END QUICK SIDEBAR TOGGLER -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->