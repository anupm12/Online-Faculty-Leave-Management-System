<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.String"%>
<jsp:useBean id="t1" class ="com.vbean.LoginBean" scope="session"/>
<jsp:setProperty name="t1" property="*"/>
<%
    String str=t1.validate();
    String staffname=null;
    String cat=null;
    String depart=null;
    String img=null;
    String desig=null;
    if(str.equals("Faculty"))
    {     //getting data and setting as session attribute
                  String mail=(String)t1.getUsername();
                  
                    try
                        {
                        Connection c=Loadconnection.getConnection();
                        PreparedStatement ps = c.prepareStatement("select * from staff where email=?");
                        ps.setString(1,mail);
                        ResultSet rs=ps.executeQuery();
                            if(rs.next())
                           {
                            staffname=rs.getString("name");
                            cat=rs.getString("category");
                            depart=rs.getString("department");
                             desig=rs.getString("designation");
                            img=rs.getString("image");
                            session.setAttribute("designation",desig);
                            session.setAttribute("department",depart);
                            session.setAttribute("name",staffname);
                            session.setAttribute("cat",cat);
                            session.setAttribute("image",img);
                            session.setAttribute("email",mail);
                            }
                            }
                     catch(Exception e1)
                    {
                        out.println(e1);
                    }
           //end session attribute
        response.sendRedirect("faculty/index.jsp");
    }
    if(str.equals("HOD"))
    {
       //getting data and setting as session attribute
                  String mail=(String)t1.getUsername();
                    try
                        {
                        Connection c=Loadconnection.getConnection();
                        PreparedStatement ps = c.prepareStatement("select * from staff where email=?");
                        ps.setString(1,mail);
                        ResultSet rs=ps.executeQuery();
                            if(rs.next())
                           {
                            staffname=rs.getString("name");
                            cat=rs.getString("category");
                            depart=rs.getString("department");
                            img=rs.getString("image");
                            desig=rs.getString("designation");
                            session.setAttribute("designation",desig);
                            session.setAttribute("department",depart);
                            session.setAttribute("name",staffname);
                            session.setAttribute("cat",cat);
                            session.setAttribute("email",mail);
                            }
                            }
                     catch(Exception e1)
                    {
                        out.println(e1);
                    }
           //end session attribute
        response.sendRedirect("hod/index.jsp");
    }
    if(str.equals("admin"))
    {
        //getting data and setting as session attribute
                  String mail=(String)t1.getUsername();
                    try
                        {
                        Connection c=Loadconnection.getConnection();
                        PreparedStatement ps = c.prepareStatement("select * from staff where email=?");
                        ps.setString(1,mail);
                        ResultSet rs=ps.executeQuery();
                            if(rs.next())
                           {
                            staffname=rs.getString("name");
                            cat=rs.getString("category");
                            depart=rs.getString("department");
                            desig=rs.getString("designation");
                            session.setAttribute("designation",desig);
                            session.setAttribute("department",depart);
                            session.setAttribute("name",staffname);
                            session.setAttribute("cat",cat);
                            session.setAttribute("email",mail);
                            }
                            }
                     catch(Exception e1)
                    {
                        out.println(e1);
                    }
           //end session attribute
        response.sendRedirect("admin/index.jsp");
    }
     if(str.equals("director"))
    {
        //getting data and setting as session attribute
                  String mail=(String)t1.getUsername();
                    try
                        {
                        Connection c=Loadconnection.getConnection();
                        PreparedStatement ps = c.prepareStatement("select * from staff where email=?");
                        ps.setString(1,mail);
                        ResultSet rs=ps.executeQuery();
                            if(rs.next())
                           {
                            staffname=rs.getString("name");
                            cat=rs.getString("category");
                            depart=rs.getString("department");
                            desig=rs.getString("designation");
                            session.setAttribute("designation",desig);
                            session.setAttribute("department",depart);
                            session.setAttribute("name",staffname);
                            session.setAttribute("cat",cat);
                            session.setAttribute("email",mail);
                            }
                            }
                     catch(Exception e1)
                    {
                        out.println(e1);
                    }
           //end session attribute
        response.sendRedirect("director/index.jsp");
    }
    if(str.equals("login"))
    {
        request.setAttribute("msg","Incorrect username and password ");
        RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
        rd.forward(request, response);
    }
    if(str.equals("error"))
        response.sendRedirect("error.jsp");
    %>