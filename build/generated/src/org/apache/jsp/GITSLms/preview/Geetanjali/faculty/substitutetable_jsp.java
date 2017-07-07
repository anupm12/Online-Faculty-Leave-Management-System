package org.apache.jsp.GITSLms.preview.Geetanjali.faculty;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class substitutetable_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"portlet-body\">\n");
      out.write("                                        <table class=\"table table-striped table-bordered table-hover order-column\" id=\"sample_1\">\n");
      out.write("                                            <thead>\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <th>Leave ID</th>\n");
      out.write("                                                    <th>NAME</th>\n");
      out.write("                                                    <th>FROM</th>\n");
      out.write("                                                    <th>TO</th>\n");
      out.write("                                                    <th>DAYS</th>\n");
      out.write("                                                    <th>TYPE</th>\n");
      out.write("                                                    <th>REASON</th>\n");
      out.write("                                                    <th>SUBSTITUTE</th>\n");
      out.write("                                                    <th>STATUS</th>\n");
      out.write("                                                    \n");
      out.write("                                                </tr>\n");
      out.write("                                            </thead>\n");
      out.write("                                            <tbody>\n");
      out.write("                                               \n");
      out.write("                                                                  ");

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
                                                               {   
      out.write(" \n");
      out.write("                                                                                                                 \n");
      out.write("                                                \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("appid") );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("name") );
      out.write(" </td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatfrom );
      out.write("</td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatto );
      out.write("</td>   \n");
      out.write("                                                    <td> ");
      out.print(days );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("leavetype") );
      out.write(" </td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("reason") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("substitution") );
      out.write("</td>\n");
      out.write("                                                    <td><span class=\"label label-sm label-success\"> Approved </span></td>\n");
      out.write("                                                    \n");
      out.write("                                                   \n");
      out.write("                                                </tr>\n");
      out.write("                                             ");
  }
                                                     else if(rs.getString("status").equalsIgnoreCase("rejected"))
                                                     {   
      out.write(" \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("appid") );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("name") );
      out.write(" </td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatfrom );
      out.write("</td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatto );
      out.write("</td>\n");
      out.write("                                                    <td> ");
      out.print(days );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("leavetype") );
      out.write(" </td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("reason") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("substitution") );
      out.write("</td>\n");
      out.write("                                                    <td><span class=\"label label-sm label-danger\"> Rejected </span></td>\n");
      out.write("                                                    \n");
      out.write("                                                   \n");
      out.write("                                                </tr>\n");
      out.write("                                             ");
  }
                                                     else 
                                                     {   
      out.write(" \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("appid") );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("name") );
      out.write(" </td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatfrom );
      out.write("</td>\n");
      out.write("                                                    <td class=\"center\">");
      out.print(formatto );
      out.write("</td>\n");
      out.write("                                                    <td> ");
      out.print(days );
      out.write(" </td>\n");
      out.write("                                                    <td> ");
      out.print(rs.getString("leavetype") );
      out.write(" </td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("reason") );
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rs.getString("substitution") );
      out.write("</td>\n");
      out.write("                                                    <td><span class=\"label label-sm label-warning\"> Pending </span></td>\n");
      out.write("                                                    \n");
      out.write("                                                   \n");
      out.write("                                                </tr>\n");
      out.write("                                             ");
  }
                                                         
                                                               }
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                
      out.write("\n");
      out.write("                                              \n");
      out.write("                                                   \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("                                               \n");
      out.write("                                            </tbody>\n");
      out.write("                                        </table>\n");
      out.write("                                    </div>");
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
