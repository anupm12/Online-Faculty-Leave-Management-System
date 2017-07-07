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

<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    
<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <meta charset="utf-8" />
        <title>LMS | Leave Policy</title>
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
                                    <span>Leave Policy</span>
                                </li>
                            </ul>
                           
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Leave Policy
                            <small></small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                 <div class="portlet box green">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="fa fa-comments"></i>Leave Policy </div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"> </a>
                                            <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                            <a href="javascript:;" class="reload"> </a>
                                            <a href="javascript:;" class="remove"> </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="content-inner clearfix">
                    
<h4 align="center"><a id="Annual_Leave" class="bookmark" title="Annual_Leave" name="Annual_Leave"></a><span class="darkblue-text">ANNUAL LEAVE</span>&nbsp;</h4>
<p align="left">    <br>Annual leave is granted to allow vacation time or for taking care of activities that can't be scheduled on non-working days. It can also be used to supplement sick leave when necessary. Employees assigned to work a 40-hour week earn annual leave as follows:</p>
<p align="left">&nbsp;</p>
<table dropzone="copy" width="80%" align="center">
    <tbody>
        <tr class="alt">
            <td>                <p align="center"><strong>&nbsp;Length of Service</strong>                &nbsp;</p>
            </td>
            <td style="cursor: default;">                <p align="center"><strong>&nbsp;Leave Earned Per Pay Period</strong>                &nbsp;</p>
            </td>
            <td>                <p align="center"><strong>&nbsp;Leave Earned Per Year</strong>                &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>                <p align="center">&nbsp;Less than 3 years</p>
            </td>
            <td style="cursor: default;">                <p align="center">&nbsp;4.61 hours</p>
            </td>
            <td>                <p align="center">&nbsp;15 days per year (120 Hours)</p>
            </td>
        </tr>
        <tr class="alt">
            <td>                <p align="center">&nbsp;3 years but less than 15</p>
            </td>
            <td style="cursor: default;">                <p align="center">&nbsp; 6.15 hours</p>
            </td>
            <td>                <p align="center">&nbsp;20 days per year (160 Hours)</p>
            </td>
        </tr>
        <tr>
            <td>                <p align="center">&nbsp;15 years or more</p>
            </td>
            <td style="cursor: default;">                <p align="center">&nbsp;8 hours</p>
            </td>
            <td style="cursor: default;">                <p align="center">&nbsp;26 days per year (208 Hours)</p>
            </td>
        </tr>
    </tbody>
</table>
<p>&nbsp;    <br>Annual leave may not be used during the first 30 days of employment unless pre-arranged as a condition of employment. Annual leave must be scheduled with your supervisor at a time which will be in the best interest of the College.</p>
<p>Up to one year of accumulation of unused annual leave may be carried forward to the next year. All other unused annual leave will be lost. Upon termination of employment with Montgomery College, employees are paid in full for all unused annual leave up to a maximum of one year of accumulation at their current rate of accumulation. Please note that for part-time employees the amount of leave carried forward each year or for which the employee may be paid upon termination is pro-rated according to the proportion that their workweek is to a 40-hour workweek. If you have any questions, please contact Suzanne Redding at     <a href="mailto:Suzanne.Redding@montgomerycollege.edu" title="Suzanne.Redding@montgomerycollege.edu">Suzanne.Redding@montgomerycollege.edu</a>.    <br></p>
<p>&nbsp;</p>
<div align="right"><address><a href="#Top">&gt;&gt;back to top</a>&nbsp;</address></div>
<p>&nbsp;</p>
<h4 align="center"><a id="Sick_Leave" class="bookmark" title="Sick_Leave" name="Sick_Leave"></a><span class="darkblue-text">SICK LEAVE</span>&nbsp;</h4>
<p>    <br>Sick leave is granted for personal illness, injury, and quarantine, as well as for medical, dental, or optical examinations and treatment. The leave policy permits use of sick leave for illness in the immediate family when the employee's presence is required. Full time employees earn sick leave at 3.69 hours per pay period (12 days per year). Sick leave can be used only after it has been earned. Upon recommendation of the employee's supervisor, an advancement to an employee of unearned sick leave with pay not to exceed the amount earned during the next succeeding 12 months (96 Hours for full-time employees) may be carried forward from year to year without limit. Upon termination, employees hired prior to January 1, 1993, and who have 5 years or more consecutive service with Montgomery College are eligible to receive pay for 25% of their unused sick leave balance up to a maximum of 25% of 180 days. This benefit is not available to employees hired after that date.</p>
<p>Employees who are unable to report to work due to illness or injury, should notify their supervisor as soon as possible, preferably before or during the working hours of the first day they are absent. Supervisors are to report excessive or questionable use of sick leave in writing to the Office of Human Resources and Strategic Talent Management.&nbsp; If you have any questions, please contact Suzanne Redding at     <a title="Suzanne.Redding@montgomerycollege.edu" href="mailto:Suzanne.Redding@montgomerycollege.edu">Suzanne.Redding@montgomerycollege.edu</a>.    <br></p>
<div align="right"><address><a href="#Top">&gt;&gt;back to top</a>&nbsp;</address></div>
<h4 align="center"><br><a id="Personal_Leave" class="bookmark" title="Personal_Leave" name="Personal_Leave"></a><span class="darkblue-text">PERSONAL LEAVE</span>&nbsp;</h4>
<p>    <br>Personal leave with pay is granted on a noncumulative basis to a maximum of 24 hours (3 days) per calendar year for full-time employees and on a prorated basis for part-time employees. It is to be used for personal obligations such as those listed below, or for other important personal unplanned crises or emergencies involving family members or personal property. Personal leave is advanced at the beginning of the each calendar year. Personal leave is a resource at your disposal if you should need it. If you do not use it, it is still there on an annual basis.</p>
<p>The following are guidelines to assist employees in determining what situations are appropriate for use of personal leave. However, while personal leave must be requested from and approved by the immediate supervisor, employees are on the honor system and do not need to provide their supervisors with a reason for requesting the leave.</p>
<p>Personal Leave may be used for purposes such as the following:</p>
<ul>
    <li>Religious observance</li>
    <li>Appointment with a lawyer</li>
    <li>Court appearance, if not covered under Civil Leave policy</li>
    <li>Settlement/purchase, walk-through on a house</li>
    <li>School registration or conference for children</li>
    <li>Graduation</li>
    <li>Bereavement for other than family members</li>
</ul>
<p>    <br>Personal Leave should not be used for the following:</p>
<ul>
    <li>Recreational activities</li>
    <li>Voting (the polls are open a sufficient number of hours to allow employees to vote during non-duty hours)</li>
    <li>Servicing car if not an emergency</li>
    <li>Volunteer work</li>
    <li>Shopping</li>
    <li>Out-of-town family requests</li>
    <li>Research</li>
    <li>Family illness (covered under sick leave)</li>
    <li>Political activities</li>
    <li>Weather conditions</li>
</ul>
<div align="right"><address><br><a href="#Top">&gt;&gt;back to top</a>&nbsp;</address></div>
<div align="right"><address>&nbsp;</address></div>
<h4 align="center"><a id="Holiday_Pay" class="bookmark" title="Holiday_Pay" name="Holiday_Pay"></a><span class="darkblue-text">HOLIDAY PAY</span>&nbsp;</h4>
<p align="left">    <br>Employees are authorized paid leave on official holidays when such holidays fall on days when the employees are regularly scheduled to work. Such leave is referred to as "holiday leave". Official holidays are those days designated each year in the College calendar on which the College is listed as being closed, including the Saturdays and Sundays. Generally there are 14 paid holidays each year. Some employees may be required to work on an official holiday if determination is made that certain College services must be maintained. Non-exempt employees who are required to work on an official holiday are paid (in addition to pay for their regular holiday leave) at one and one-half times their pay for each hour of work performed on the holiday.</p>
<p>When an official holiday falls on an employee's regularly scheduled day off, the employee will not be paid for that day.&nbsp;&nbsp; In those situations where a temporary change in work schedule serves to reduce the individual's number of paid holidays below the minimum number received by those employees working a regular work schedule, the person so affected will receive an alternate paid holiday during the same week. If you have any questions, please contact Suzanne Redding at     <a title="Suzanne.Redding@montgomerycollege.edu" href="mailto:Suzanne.Redding@montgomerycollege.edu">Suzanne.Redding@montgomerycollege.edu</a>.    <br></p>
<div align="right"><address><a href="#Top">&gt;&gt;back to top</a>&nbsp;</address></div>
                    

                    
                    
					
                </div>
                                    </div>
                                </div>
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