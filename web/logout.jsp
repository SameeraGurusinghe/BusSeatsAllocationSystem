<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate(); %>

<% 
    try{
    response.sendRedirect("index.html");
    }catch(Exception ex){
    }

%>