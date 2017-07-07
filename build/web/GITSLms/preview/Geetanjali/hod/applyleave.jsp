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
else if (!(category).equals("HOD")) {
   response.sendRedirect("../Login.jsp");} 

%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    
<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/form_validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:36:14 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>    <link rel="stylesheet" href="../js/alertify.bootstrap.css">
        <link rel="stylesheet" href="../js/alertify.core.css">
        <link rel="stylesheet" href="../js/alertify.bootstrap.css">
        <script src="../js/jquery-3.1.1.min.js"></script>
        <script src="../js/alertify.min.js"></script> 
          <script type="text/javascript">
                                     var i=1;
                                 function addrow()
                                                    {i++;
                                               var subject="subject_"+i;
                                               var year="year_"+i;
                                               var substitute="substitute_"+i;
                                               var slot="slot_"+i;
                                               var date="date_"+i;
                                               var semester="semester_"+i;
                                                     
                                               $('#addslot').append('<div class="form-group"><div class="col-xs-2"><select class="form-control select2me" id='+year+'><option disabled selected value="year">year</option></select></div><div class="col-xs-2"><select class="form-control select2me" id='+semester+'><option disabled selected value="semester">semester</option></select></div><div class="col-xs-2"><select class="form-control select2me" id='+slot+'><option disabled selected value="slot">slot</option></select></div><div class="col-xs-2"><input type="text" id='+subject+' value="subject" data-required="1" class="form-control" /></div><div class="col-xs-2"><select class="form-control select2me" id='+substitute+'><option disabled selected value="substitute">substitute</option></select></div><div class="col-xs-2"><input type="text" id='+date+' value="date" data-required="1" class="form-control" /></div></div></div>');                                                        
                                               var tempy=1;
                                               for(tempy=1;tempy<=4;tempy++)
                                               {   var y=tempy+" year";
                                                   
                                                   $('#'+year).append($('<option></option>').attr('value',y).text(y));
                                                   
                                               }
                                               var temps=1;
                                               for(temps=1;temps<=8;temps++)
                                               {   var s=temps+" semester";
                                                   
                                                   $('#'+semester).append($('<option></option>').attr('value',s).text(s));
                                               }
                                               var tempslot=1;
                                               for(tempslot=1;tempslot<=8;tempslot++)
                                               {   var sl=tempslot+" slot";
                                                //   $('#'+slot).append('<option value='+sl+'>'+sl+'</option>');
                                                  $('#'+slot).append($('<option></option>').attr('value',sl).text(sl)); 
                                               }
                                                     $.ajax({
                                                            url:'getfaculty.jsp',
                                                            data:{name:'abc'},
                                                            type:'get',
                                                            dataType:'json',
                                                            cache:false,
                                                            success:function(data)
                                                            {  var i=0;
                                                                
                                                               $.each(data,function(){
                                                               i++;
                                                              $('#'+substitute).append($('<option></option>').attr('value',this['name']).text(this['name']));    
                                                            //$('#'+substitute).append('<option value='+this['name']+'>'+this['name']+'</option>');
                                                             });
                                                            },
                                                            error:function()
                                                            {
                                                            alert("error");
                                                            }
                                                           });                        
                                                  }
                                 function subs(){alert(i);}
                                 
                                    function apply(){
                                     
                                     var name=document.getElementById('name').value;
                                     var email=document.getElementById('email').value;
                                     var designation=document.getElementById('designation').value;
                                     var department=document.getElementById('department').value;
                                     var leavetype=document.getElementById('leavetype').value;
                                     var reason=document.getElementById('reason').value;
                                     var datefrom=document.getElementById('datefrom').value;
                                     var dateto=document.getElementById('dateto').value;
                                      
                                     
                                    var jsonArr =[];
                                     var loop;
                                     for(loop=1;loop<=i;loop++)
                                     { var y="year_"+loop;
                                       var s="semester_"+loop;
                                       var d="date_"+loop;
                                       var sl="slot_"+loop;
                                       var su="substitute_"+loop;
                                       var sub="subject_"+loop;
                                       var yeart=document.getElementById(y).value;
                                       var substitutet=document.getElementById(su).value;
                                       var semestert=document.getElementById(s).value;
                                       var datet=document.getElementById(d).value;
                                       var slott=document.getElementById(sl).value;
                                       var subjectt=document.getElementById(sub).value;
                                       
                       jsonArr.push({
                                           
                                           y:yeart,
                                           s:semestert,
                                           d:datet,
                                           sl:slott,
                                           su:substitutet,
                                           sub:subjectt
                                           
                                       });
                                     }
                                    
                                    var temp=JSON.stringify(jsonArr);
                                   // alert(temp);
                                    //window.location.replace("sar.jsp?array="+temp);
                                     window.location.replace("lws.jsp?name="+name+"&email="+email+"&designation="+designation+"&department="+department+"&leavetype="+leavetype+"&reason="+reason+"&datefrom="+datefrom+"&dateto="+dateto+"&array="+temp);
                                     
                                
                                }                   
                                 
          </script>
       
        
        <meta charset="utf-8" />
        <title>LMS | Apply Leave</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Preview page of Metronic Admin Theme #1 for bootstrap form validation demos using jquery validation plugin" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="../assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" />
        <link href="../assets/global/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css" rel="stylesheet" type="text/css" />
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
            <!-- BEGIN HEADER -->
                <!-- include HEADER-->
            
             <!-- end HEADER -->
       
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
            <div class="clearfix"> </div>
            <!-- END HEADER & CONTENT DIVIDER -->
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN SIDEBAR -->
                 <!-- include SIDEBAR -->
                
                 <jsp:include page="sidebar.jsp"/>
       
                <!-- END SIDEBAR -->
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN THEME PANEL -->
                        <div class="theme-panel hidden-xs hidden-sm">
                            <div class="toggler"> </div>
                            <div class="toggler-close"> </div>
                            <div class="theme-options">
                                <div class="theme-option theme-colors clearfix">
                                    <span> THEME COLOR </span>
                                    <ul>
                                        <li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default"> </li>
                                        <li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="Dark Blue"> </li>
                                        <li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue"> </li>
                                        <li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey"> </li>
                                        <li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light"> </li>
                                        <li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="Light 2"> </li>
                                    </ul>
                                </div>
                                <div class="theme-option">
                                    <span> Theme Style </span>
                                    <select class="layout-style-option form-control input-sm">
                                        <option value="square" selected="selected">Square corners</option>
                                        <option value="rounded">Rounded corners</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Layout </span>
                                    <select class="layout-option form-control input-sm">
                                        <option value="fluid" selected="selected">Fluid</option>
                                        <option value="boxed">Boxed</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Header </span>
                                    <select class="page-header-option form-control input-sm">
                                        <option value="fixed" selected="selected">Fixed</option>
                                        <option value="default">Default</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Top Menu Dropdown</span>
                                    <select class="page-header-top-dropdown-style-option form-control input-sm">
                                        <option value="light" selected="selected">Light</option>
                                        <option value="dark">Dark</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Mode</span>
                                    <select class="sidebar-option form-control input-sm">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected="selected">Default</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Menu </span>
                                    <select class="sidebar-menu-option form-control input-sm">
                                        <option value="accordion" selected="selected">Accordion</option>
                                        <option value="hover">Hover</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Style </span>
                                    <select class="sidebar-style-option form-control input-sm">
                                        <option value="default" selected="selected">Default</option>
                                        <option value="light">Light</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Sidebar Position </span>
                                    <select class="sidebar-pos-option form-control input-sm">
                                        <option value="left" selected="selected">Left</option>
                                        <option value="right">Right</option>
                                    </select>
                                </div>
                                <div class="theme-option">
                                    <span> Footer </span>
                                    <select class="page-footer-option form-control input-sm">
                                        <option value="fixed">Fixed</option>
                                        <option value="default" selected="selected">Default</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- END THEME PANEL -->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                </ul>
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Apply Leave
                            <small></small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                                    
                        
                   
                        <div class="row">
                            <div class="col-md-12">
                                <!-- BEGIN VALIDATION STATES-->
                                <div class="portlet light portlet-fit portlet-form bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-settings font-dark"></i>
                                            <span class="caption-subject font-dark sbold uppercase">APPLICATION</span>
                                        </div>
                                        <div class="actions">
                                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                                <label class="btn btn-transparent dark btn-outline btn-circle btn-sm active">
                                                    <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                                                <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                                    <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <!-- BEGIN FORM-->
                                        <form action="applyleavebean.jsp" id="form_sample_3" class="form-horizontal" method="POST">
                                            <div class="form-body">
                                                <div class="alert alert-danger display-hide">
                                                    <button class="close" data-close="alert"></button> You have some form errors. Please check below. </div>
                                                <div class="alert alert-success display-hide">
                                                    <button class="close" data-close="alert"></button> Your form validation is successful! </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Name
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <input type="text" id="name" value="<%=session.getAttribute("name")%>" readonly data-required="1" class="form-control" /> </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Email Address
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-envelope"></i>
                                                            </span>
                                                            <input type="email" id="email" value="<%=session.getAttribute("email")%>" readonly class="form-control" placeholder="Email Address"> </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Designation
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <input type="text" id="designation" value="<%=session.getAttribute("designation")%>" readonly data-required="1" class="form-control" /> </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Department
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <input type="text" id="department" data-required="1" value="<%=session.getAttribute("department")%>" readonly class="form-control" /> </div>
                                                </div>                                                
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">Leave Type
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <select class="form-control select2me" id="leavetype">
                                                            <option value="">Select...</option>
                                                            <option value="PL">PL</option>
                                                            <option value="CL">CL</option>
                                                            <option value="SPL">SPL</option>
                                                            <option value="Others">Others</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="control-label col-md-3">Reason&nbsp;&nbsp;</label>
                                                    <div class="col-md-4">
                                                        <input id="reason" type="text" class="form-control" /> </div>
                                                </div>
                                               
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">From</label>
                                                    <div class="col-md-4">
                                                        <div class="input-group date date-picker" data-date-format="dd-mm-yyyy">
                                                            <input type="text" class="form-control"  id="datefrom" readonly name="datepicker">
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                        <!-- /input-group -->
                                                        <span class="help-block"> select a date </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-3">To</label>
                                                    <div class="col-md-4">
                                                        <div class="input-group date date-picker" data-date-format="dd-mm-yyyy">
                                                            <input type="text" class="form-control" id="dateto"   readonly name="datepicker">
                                                            <span class="input-group-btn">
                                                                <button class="btn default" type="button">
                                                                    <i class="fa fa-calendar"></i>
                                                                </button>
                                                            </span>
                                                        </div>
                                                        <!-- /input-group -->
                                                        <span class="help-block"> select a date </span>
                                                    </div>
                                                </div>
                                                 
                                                 
                                                </div><hr>
                                                
                                                
                                                <div class="row">
                                                    
                                                <div class="control-label col-md-3">
                                                <button type="button" value="substitution" onclick="subs()" class="btn btn-primary" data-toggle="modal" data-target="#myModal">substitution</button>
                                                </div>
                                                
                                                </div>
                                                <!--pop up-->
    <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn btn-info" onclick="addrow()">ADD+ </button>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×</button>
                </div>
            
            <div class="modal-body">
                
                <div class="row">
                    <div class="col-md-12" id="addslot">
                        <!-- Nav tabs -->
                        <!-- Tab panes -->
                        
                        <div class="form-group" >
                                                    <div class="col-xs-2">
                                                        <select class="form-control select1me" id="year_1">
                                                            <option value="year" selected disabled>year</option>
                                                            <option value="1year">1 year</option>
                                                            <option value="2year">2 year</option>
                                                            <option value="3year">3 year</option>
                                                            <option value="4year">4 year</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <select class="form-control select1me" id="semester_1">
                                                            <option value="semester">semester</option>
                                                            <option value="1semester">1 semester</option>
                                                            <option value="2semester">2 semester</option>
                                                            <option value="3semester">3 semester</option>
                                                            <option value="4semester">4 semester</option>
                                                            <option value="5semester">5 semester</option>
                                                            <option value="6semester">6 semester</option>
                                                            <option value="7semester">7 semester</option>
                                                            <option value="8semester">8 semester</option>
                                                    </select>
                                                    </div>
                                                    
                                                   <div class="col-xs-2">
                                                        <select class="form-control select1me" id="slot_1">
                                                            <option value="slot">slot</option>
                                                            <option value="1 slot">1 slot</option>
                                                            <option value="2slot">2 slot</option>
                                                            <option value="3slot">3 slot</option>
                                                            <option value="4slot">4 slot</option>
                                                            <option value="5 slot">5 slot</option>
                                                            <option value="6 slot">6 slot</option>
                                                            <option value="7 slot">7 slot</option>
                                                            <option value="8 slot">8 slot</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <input type="text" id="subject_1" value="subject" data-required="1" class="form-control" />
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <select class="form-control select1me" id="substitute_1">
                                                        <option value="substitute" readonly>substitute</option>    
                                          <% try{ Connection c=com.dbconnection.Loadconnection.getConnection();
                                                  PreparedStatement ps = c.prepareStatement("select * from staff where (category=? or category=?) and name<>?");
                                                  String cat="Faculty";
                                                  String hod="HOD";
                                                  String name=(String)session.getAttribute("name");
                                                  ps.setString(1,cat);
                                                  ps.setString(2,hod);
                                                  ps.setString(3,name);
                                                  
                                                  ResultSet rs=ps.executeQuery();
                                                                   while(rs.next())
                                                                   {
                                                                       %> <option value="<%=rs.getString("name")%>"><%=rs.getString("name")%></option>
                                                                          
                                                                       <%
                                                                   }
                                                }
                                            catch(Exception ex)
                                            {
                                            }
                                          %>
                                                            
                                                        </select>
                                                    </div>
                                                    <div class="col-xs-2">
                                                        <input type="text" id="date_1" value="date" data-required="1" class="form-control" />
                                                    </div>
                                 </div>  
                                  
                               
                        
                        </div>
                    
                    
                </div>
                                 <div class="form-actions">
                                                <div class="row">
                                                    <div class="col-md-offset-3 col-md-9">
                                                <button type="button" onclick="apply()" class="btn green">APPLY</button>
                                                       </div>
                                                </div>
                                            </div>
                    
            </div>
        </div>
    </div>
</div>

                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                <script>
                                                    
                                     
                                                    
                                                    
                                                   
                                                    
                                                </script>
                                                <!--form-->
                                                <br>
                                            
                                        </form>
                                        <!-- END FORM-->
                                    </div>
                                    <!-- END VALIDATION STATES-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
                <!-- END QUICK SIDEBAR -->
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
        <script src="../assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-markdown/lib/markdown.js" type="text/javascript"></script>
        <script src="../assets/global/plugins/bootstrap-markdown/js/bootstrap-markdown.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="../assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="../assets/pages/scripts/form-validation.min.js" type="text/javascript"></script>
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



<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/form_validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:36:15 GMT -->
</html>