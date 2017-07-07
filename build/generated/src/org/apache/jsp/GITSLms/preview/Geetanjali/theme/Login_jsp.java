package org.apache.jsp.GITSLms.preview.Geetanjali.theme;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <meta http-equiv=\"content-type\" content=\"text/html;charset=UTF-8\" /><!-- /Added by HTTrack -->\n");
      out.write("<!--<head>   <script type=\"text/javascript\">\n");
      out.write("      \n");
      out.write("      function handleClick(event,a)\n");
      out.write("      { if(username.value ==\"admin\"  )\n");
      out.write("          { setTimeout(function(){\n");
      out.write("           window.location='admin_1/index.jsp';\n");
      out.write("          }, 1000);\n");
      out.write("      }\n");
      out.write("      if(username.value ==\"faculty\" )\n");
      out.write("          { setTimeout(function(){\n");
      out.write("           window.location='faculty/index.jsp';\n");
      out.write("          }, 1000);\n");
      out.write("      }\n");
      out.write("       if(username.value ==\"hod\" )\n");
      out.write("          { setTimeout(function(){\n");
      out.write("           window.location='hod/index.jsp';\n");
      out.write("          }, 1000);\n");
      out.write("      }\n");
      out.write("        //alert(username.value);\n");
      out.write("        return false; // prevent further bubbling of event\n");
      out.write("      }\n");
      out.write("    </script>-->\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <title>GITS | User Login </title>\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1\" name=\"viewport\" />\n");
      out.write("        <meta content=\"Preview page of Metronic Admin Theme #1 for \" name=\"description\" />\n");
      out.write("        <meta content=\"\" name=\"author\" />\n");
      out.write("        <!-- BEGIN GLOBAL MANDATORY STYLES -->\n");
      out.write("        <link href=\"http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/plugins/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/plugins/simple-line-icons/simple-line-icons.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END GLOBAL MANDATORY STYLES -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL PLUGINS -->\n");
      out.write("        <link href=\"assets/global/plugins/select2/css/select2.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/plugins/select2/css/select2-bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END PAGE LEVEL PLUGINS -->\n");
      out.write("        <!-- BEGIN THEME GLOBAL STYLES -->\n");
      out.write("        <link href=\"assets/global/css/components.min.css\" rel=\"stylesheet\" id=\"style_components\" type=\"text/css\" />\n");
      out.write("        <link href=\"assets/global/css/plugins.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END THEME GLOBAL STYLES -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL STYLES -->\n");
      out.write("        <link href=\"assets/pages/css/login.min.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- END PAGE LEVEL STYLES -->\n");
      out.write("        <!-- BEGIN THEME LAYOUT STYLES -->\n");
      out.write("        <!-- END THEME LAYOUT STYLES -->\n");
      out.write("        <link rel=\"shortcut icon\" href=\"favicon.ico\" /> </head>\n");
      out.write("    <!-- END HEAD -->\n");
      out.write("\n");
      out.write("    <body class=\" login\" style=\"background-image:url(assets/pages/img/login/gits.jpg)\"height: 100%>\n");
      out.write("       \n");
      out.write("        <!-- BEGIN LOGO -->\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <!--<a href=\"index.html\">\n");
      out.write("                <img src=\"assets/pages/img/logo-big.png\" alt=\"\" /> \n");
      out.write("            </a>-->\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <!-- END LOGO -->\n");
      out.write("        <!-- BEGIN LOGIN -->\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <!-- BEGIN LOGIN FORM -->\n");
      out.write("            <form class=\"login-form\" name=\"myform\" action=\"loginbean.jsp\" method=\"post\">\n");
      out.write("                <h3 class=\"form-title font-green\">Sign In</h3>\n");
      out.write("                <div class=\"alert alert-danger display-hide\">\n");
      out.write("                    <button class=\"close\" data-close=\"alert\"></button>\n");
      out.write("                    \n");
      out.write("                    <span> Enter any username and password. </span>\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->\n");
      out.write("                    ");

                                            String msg=(String)request.getAttribute("msg");
                                            
                                            
      out.write("\n");
      out.write("                                             ");

                                                if(msg==null)
                                                {  }
                                                else
                                                {
      out.write("\n");
      out.write("                                                <span style=\"color:red;\">");
      out.print(msg);
      out.write("</span>   \n");
      out.write("                                                ");
}
                                                
      out.write("\n");
      out.write("                    <label class=\"control-label visible-ie8 visible-ie9\">Username</label>\n");
      out.write("                    <input class=\"form-control form-control-solid placeholder-no-fix\" id=\"username\" type=\"text\" autocomplete=\"off\" placeholder=\"Username\" name=\"username\" value=\"\" /> \n");
      out.write("                \n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"control-label visible-ie8 visible-ie9\">Password</label>\n");
      out.write("                    <input class=\"form-control form-control-solid placeholder-no-fix\" id=\"password\" type=\"password\" autocomplete=\"off\" placeholder=\"Password\" name=\"password\" /> </div>\n");
      out.write("                <div class=\"form-actions\">\n");
      out.write("                    <button type=\"submit\" class=\"btn green uppercase\">Login</button>\n");
      out.write("                    <a href=\"javascript:;\" id=\"forget-password\" class=\"forget-password\">Forgot Password?</a>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"create-account\">\n");
      out.write("                    <p>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            <!-- END LOGIN FORM -->\n");
      out.write("            <!-- BEGIN FORGOT PASSWORD FORM -->\n");
      out.write("            <form class=\"forget-form\" action=\"http://keenthemes.com/preview/metronic/theme/admin_1/index.html\" method=\"post\">\n");
      out.write("                <h3 class=\"font-green\">Forget Password ?</h3>\n");
      out.write("                <p> Enter your e-mail address below to reset your password. </p>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control placeholder-no-fix\" type=\"text\" autocomplete=\"off\" placeholder=\"Email\" name=\"email\" /> </div>\n");
      out.write("                <div class=\"form-actions\">\n");
      out.write("                    <button type=\"button\" id=\"back-btn\" class=\"btn green btn-outline\">Back</button>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success uppercase pull-right\">Submit</button>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("            <!-- END FORGOT PASSWORD FORM -->\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <div class=\"copyright\"> 2017 © Geetanjali Institute of Technical Studies </div>\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("<script src=\"../assets/global/plugins/respond.min.js\"></script>\n");
      out.write("<script src=\"../assets/global/plugins/excanvas.min.js\"></script> \n");
      out.write("<script src=\"../assets/global/plugins/ie8.fix.min.js\"></script> \n");
      out.write("<![endif]-->\n");
      out.write("        <!-- BEGIN CORE PLUGINS -->\n");
      out.write("        <script src=\"assets/global/plugins/jquery.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/js.cookie.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/jquery.blockui.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END CORE PLUGINS -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL PLUGINS -->\n");
      out.write("        <script src=\"assets/global/plugins/jquery-validation/js/jquery.validate.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/jquery-validation/js/additional-methods.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"assets/global/plugins/select2/js/select2.full.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END PAGE LEVEL PLUGINS -->\n");
      out.write("        <!-- BEGIN THEME GLOBAL SCRIPTS -->\n");
      out.write("        <script src=\"assets/global/scripts/app.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END THEME GLOBAL SCRIPTS -->\n");
      out.write("        <!-- BEGIN PAGE LEVEL SCRIPTS -->\n");
      out.write("        <script src=\"assets/pages/scripts/login.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <!-- END PAGE LEVEL SCRIPTS -->\n");
      out.write("        <!-- BEGIN THEME LAYOUT SCRIPTS -->\n");
      out.write("        <!-- END THEME LAYOUT SCRIPTS -->\n");
      out.write("    <!-- Google Code for Universal Analytics -->\n");
      out.write("<script>\n");
      out.write("  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n");
      out.write("  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n");
      out.write("  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n");
      out.write("  })(window,document,'script','../../../../../www.google-analytics.com/analytics.js','ga');\n");
      out.write("  ga('create', 'UA-37564768-1', 'auto');\n");
      out.write("  ga('send', 'pageview');\n");
      out.write("</script>\n");
      out.write("<!-- End -->\n");
      out.write("\n");
      out.write("<!-- Google Tag Manager -->\n");
      out.write("<noscript><iframe src=\"http://www.googletagmanager.com/ns.html?id=GTM-W276BJ\"\n");
      out.write("height=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\n");
      out.write("<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':\n");
      out.write("new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],\n");
      out.write("j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\n");
      out.write("'../../../../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);\n");
      out.write("})(window,document,'script','dataLayer','GTM-W276BJ');</script>\n");
      out.write("<!-- End -->\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Mirrored from keenthemes.com/preview/metronic/theme/admin_1/page_user_login_1.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 29 Dec 2016 12:33:22 GMT -->\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
