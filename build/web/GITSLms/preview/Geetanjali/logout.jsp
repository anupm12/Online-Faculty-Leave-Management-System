<%
    session.setAttribute("designation",null);
    session.setAttribute("department",null);
    session.setAttribute("name",null);
    session.setAttribute("email", null);
    session.setAttribute("cat", null);
    session.invalidate();
    response.sendRedirect("Login.jsp");
%>