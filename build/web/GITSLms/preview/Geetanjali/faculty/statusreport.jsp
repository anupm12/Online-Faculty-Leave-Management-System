<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% String category=(String)session.getAttribute("cat");
  
   session= request.getSession(false);
if(session == null)
{
response.sendRedirect("../Login.jsp");
    
}
else if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
   response.sendRedirect("../Login.jsp");
}
else if (!(category).equals("Faculty")) {
   response.sendRedirect("../Login.jsp");} 

%>
<!DOCTYPE html>

<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8" />
        <title>LMS | Status Report</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #1 for scroller extension demos" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="../assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="../assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="../assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="../assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/layouts/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="../assets/layouts/layout/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->
        <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
        <div class="page-wrapper">
           
              <!-- include HEADER-->
            <jsp:include page="../header.jsp"/>
             <!-- end HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                 <!-- BEGIN SIDEBAR -->
                <div class="page-sidebar-wrapper">
                   <!-- include SIDEBAR -->
                
                 <jsp:include page="sidebar.jsp"/>
                <!-- END SIDEBAR -->
                </div>
                <!-- END SIDEBAR -->
          
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN THEME PANEL -->
                        
                   
                        <!-- END THEME PANEL -->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                
                                <li>
                                    <span>STATUS REPORT</span>
                                </li>
                            </ul>
                           </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Status Report
                            <small></small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        
                        
                        
                        
                                                <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption font-dark">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject bold uppercase"> Status Report Table</span>
                                        </div>
                                        
                                    </div>
                             <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover order-column" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>Leave ID</th>
                                                    <th>NAME</th>
                                                    <th>FROM</th>
                                                    <th>TO</th>
                                                    <th>DAYS</th>
                                                    <th>TYPE</th>
                                                    <th>REASON</th>
                                                    <th>STATUS</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                               
                                                                  <%
                                                                try { String department=(String)session.getAttribute("department");
                                                                      String name=(String)session.getAttribute("name");
                                                                      Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from leaveapplication where department=? and name=?"); 
                                                                      ps.setString(1, department);
                                                                      ps.setString(2,name);
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++;    //datefrom yyyy-MM-dd to dd-MM-yyyy
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
                                                       
                                                     if(rs.getString("status").equalsIgnoreCase("approved"))
                                                               {   %> 
                                                                                                                 
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>   
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-success"> Approved </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                     else if(rs.getString("status").equalsIgnoreCase("rejected"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-danger"> Rejected </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  } 
                                                     else if(rs.getString("status").equalsIgnoreCase("recommended"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-success"> Recommended </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                     else if(rs.getString("status").equalsIgnoreCase("not recommended"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-danger"> not recommended </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                      else if(rs.getString("status").equalsIgnoreCase("substitutes confirmed"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-success"> Substitutes Confirmed </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                      else if(rs.getString("status").equalsIgnoreCase("substitution denied"))
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-danger"> Substitution Denied  </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
  
                                                     else 
                                                     {   %> 
                                                
                                                
                                                <tr>
                                                    <td> <%=rs.getString("appid") %> </td>
                                                    <td> <%=rs.getString("name") %> </td>
                                                    <td class="center"><%=formatfrom %></td>
                                                    <td class="center"><%=formatto %></td>
                                                    <td> <%=days %> </td>
                                                    <td> <%=rs.getString("leavetype") %> </td>
                                                    <td><%=rs.getString("reason") %></td>
                                                    <td><span class="label label-sm label-warning"> Pending </span></td>
                                                    
                                                   
                                                </tr>
                                             <%  }
                                                         
                                                               }
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                %>
                                              
                                                   
                                                
                                                
                                                
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
                            </div>
                        </div>
                        
                        
                       
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                
                <!-- END QUICK SIDEBAR -->
            </div>
            <!-- END CONTAINER -->
             <!-- BEGIN FOOTER -->
            <jsp:include page="../footer.jsp"/>
           <!-- END FOOTER -->
        </div>
        <!-- BEGIN QUICK NAV -->
       
        <!-- END QUICK NAV -->
        <!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<script src="../assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
        <!-- BEGIN CORE PLUGINS -->
        <script src="../assets/global/plugins/jquery.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="../assets/global/scripts/datatable.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../assets/pages/scripts/table-datatables-scroller.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="../assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="../assets/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    <!-- Google Code for Universal Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-37564768-1', 'auto');
  ga('send', 'pageview');
</script>
<!-- End -->

<!-- Google Tag Manager -->
<noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-W276BJ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'../../../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W276BJ');</script>
<!-- End -->
</body>



<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/table_datatables_scroller.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:38:48 GMT -->
</html>