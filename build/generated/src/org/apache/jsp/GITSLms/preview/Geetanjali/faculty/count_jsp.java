package org.apache.jsp.GITSLms.preview.Geetanjali.faculty;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class count_jsp extends org.apache.jasper.runtime.HttpJspBase
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

Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c);    
try   { 
         //count rows    
         //    PreparedStatement ps = c.prepareStatement("select count(*) from staff");    
         //    ps.execute();
         //    ResultSet rs=ps.executeQuery();
         //    rs.next();
         //    int i=rs.getInt(1);
        //     String id="sub"+rs.getInt(1);
       //      out.println(id);
             int i=56;
             PreparedStatement ps = c.prepareStatement("select leaveid from leaveapplication where appid=?");
             ps.setInt(1,56);
             
             ResultSet rs=ps.executeQuery();
            while(rs.next()){
                    int j=rs.getInt(1);
                    out.println(j);
                    }
             
             

             
             //response.sendRedirect("applyleave.jsp");
           } 
         catch(Exception e1)
         {out.println("error lol");
         }    
    
    


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
