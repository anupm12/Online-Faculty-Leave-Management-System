package org.apache.jsp.GITSLms.preview.Geetanjali.faculty;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import com.dbconnection.Loadconnection;
import java.io.PrintWriter;
import org.json.JSONArray;
import org.json.JSONObject;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class getfaculty_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
                           try{ Connection c=com.dbconnection.Loadconnection.getConnection();
                                 PreparedStatement ps = c.prepareStatement("select * from staff where (category=? or category=?) and name<>?");
                                 String category="Faculty";
                                 String hod="HOD";
                                 String name=(String)session.getAttribute("name");
                                 ps.setString(1,category);
                                 ps.setString(2,hod);
                                 ps.setString(3,name);
                                 
                                 
                                 int i=0;
                                 int row;
                                 JSONArray jarray= new JSONArray();
                                 PrintWriter Out= response.getWriter();
                                 
                                ResultSet rs=ps.executeQuery();
                                 while(rs.next())   
                                 {            JSONObject jobject=new JSONObject();
                                               jobject.put("name", rs.getString("name"));
                                               jarray.put(jobject);              
                                 }
                                out.println(jarray);
                                // Out.println(jarray);       
                                }
                                           catch(Exception ex)
                                           { out.println(ex);
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
