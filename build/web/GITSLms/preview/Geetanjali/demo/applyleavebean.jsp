<%
            
// Date date=reformat.parse(request.getParameter("datefrom"));
//    Date date=reformat.parse(request.getParatmeter("datefrom")));
        String name=request.getParameter("name");
       String email=request.getParameter("email");
          String designation=request.getParameter("designation");
      String leavetype=request.getParameter("leavetype");
      String reason=request.getParameter("reason");
      String datefrom=request.getParameter("datefrom");
       String dateto=request.getParameter("dateto");
        String substitution=request.getParameter("substitution");
        String department=request.getParameter("department");
        String year=request.getParameter("year_1");
        String substitute=request.getParameter("substitute_1");
        String semester=request.getParameter("semester_1");
        String slot=request.getParameter("slot_1");
        String d=request.getParameter("departmenttowork_1");
       out.println(year+substitute+semester+slot+d);
                  
         
    %>
    