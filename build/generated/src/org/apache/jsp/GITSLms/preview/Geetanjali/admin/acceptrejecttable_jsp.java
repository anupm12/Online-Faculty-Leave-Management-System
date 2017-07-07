package org.apache.jsp.GITSLms.preview.Geetanjali.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class acceptrejecttable_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("                            \n");
      out.write("                            \n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"col-md-12\">\n");
      out.write("                                <!-- BEGIN EXAMPLE TABLE PORTLET-->\n");
      out.write("                                <div class=\"portlet light portlet-fit bordered\">\n");
      out.write("                                    <div class=\"portlet-title\">\n");
      out.write("                                        <div class=\"caption\">\n");
      out.write("                                            <i class=\"icon-settings font-red\"></i>\n");
      out.write("                                            <span class=\"caption-subject font-red sbold uppercase\">ACCEPT/REJECT Table</span>\n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"portlet-body\">\n");
      out.write("                                        <div class=\"table-toolbar\">\n");
      out.write("                                            <div class=\"row\">\n");
      out.write("                                                <div class=\"col-md-6\">\n");
      out.write("                                                    <div class=\"btn-group\">\n");
      out.write("                                                       \n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-md-6\">\n");
      out.write("                                                    <div class=\"btn-group pull-right\">\n");
      out.write("                                                        <button class=\"btn green btn-outline dropdown-toggle\" data-toggle=\"dropdown\">Tools\n");
      out.write("                                                            <i class=\"fa fa-angle-down\"></i>\n");
      out.write("                                                        </button>\n");
      out.write("                                                        <ul class=\"dropdown-menu pull-right\">\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <a href=\"javascript:;\"> Print </a>\n");
      out.write("                                                            </li>\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <a href=\"javascript:;\"> Save as PDF </a>\n");
      out.write("                                                            </li>\n");
      out.write("                                                            <li>\n");
      out.write("                                                                <a href=\"javascript:;\"> Export to Excel </a>\n");
      out.write("                                                            </li>\n");
      out.write("                                                        </ul>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <table class=\"table table-striped table-hover table-bordered\" id=\"sample_editable_1\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th> NAME </th>\n");
      out.write("                                                    <th> TYPE OF LEAVE </th>\n");
      out.write("                                                    <th> REASON </th>\n");
      out.write("                                                    <th> FROM </th>\n");
      out.write("                                                    <th> TO </th>\n");
      out.write("                                                    <th> ACCPET </th>\n");
      out.write("                                                    <th> REJECT </th>\n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                                                         ");

                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                  //   PreparedStatement ps = c.prepareStatement("select * from staff");
                                                                      PreparedStatement ps = c.prepareStatement("select * from leaveapplication where status="+"'pending' "); 
                                                                      int i=0;
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                                            
                                             { i++; 
      out.write("\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                <<tr>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("name") );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("leavetype") );
      out.write(" </td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("reason") );
      out.write("</td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(rs.getString("datefrom") );
      out.write("</td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(rs.getString("dateto") );
      out.write("</td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                       <button type=\"button\" onclick=\"approved(this);\" id=\"");
      out.print(rs.getString("appid"));
      out.write("\" class=\"btn btn-outline green btn-sm\">Approve</button>\n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <button type=\"button\" onclick=\"rejected(this);\" id=\"");
      out.print(rs.getString("appid"));
      out.write("\" class=\"btn btn-outline red btn-sm\">Reject</button>\n");
      out.write("                                                    </td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                  ");
}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                
      out.write("\n");
      out.write("                                              \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                            </tbody>\n");
      out.write("                                        </table>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <!-- END EXAMPLE TABLE PORTLET-->\n");
      out.write("                            </div>");
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
