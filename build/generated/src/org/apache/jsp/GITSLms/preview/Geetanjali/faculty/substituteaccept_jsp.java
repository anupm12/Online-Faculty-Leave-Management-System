package org.apache.jsp.GITSLms.preview.Geetanjali.faculty;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import com.dbconnection.Loadconnection;
import java.sql.Connection;
import java.sql.Statement;

public final class substituteaccept_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        // String id=( request.getParameter("id"));
             String id="subs0";
               
   	    Connection c=com.dbconnection.Loadconnection.getConnection();System.out.println(c); 
            PreparedStatement ps = c.prepareStatement("update substitutetable set decisiveid=? where subsid=?");
            ps.setInt(1,1);
            ps.setString(2, id);
            int   rows=ps.executeUpdate();
            ps = c.prepareStatement("select * from substitutetable where subsid=? ");
            ps.setString(1, id);
            String leaveid=null;
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                leaveid=rs.getString("leaveid");
            }
            ps = c.prepareStatement("select * from substitutetable where leaveid=? ");
            ps.setString(1, leaveid);
            rs=ps.executeQuery();
            int count=0,decisivecount=0;
            while(rs.next())
            { count++;
                if(rs.getInt("decisiveid")==1)
                {
                    decisivecount++;
                }
            }
            // out.println("count:"+count+"decisive:"+decisivecount);
            if(count==decisivecount)
            {  String status="substitutes confirmed";
                ps = c.prepareStatement("update leaveapplication set status=? where leaveid=?");
                ps.setString(1,status);
                ps.setString(2,leaveid);
                rows=ps.executeUpdate();
                //out.println("done");
            }
           
           response.sendRedirect("index.jsp");
    
      out.write("\n");
      out.write("    \n");
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
