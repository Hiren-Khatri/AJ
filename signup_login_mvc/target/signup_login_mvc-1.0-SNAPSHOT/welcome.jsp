<%-- 
    Document   : welcome
    Created on : 3 Jan, 2020, 12:57:52 PM
    Author     : KHATRI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
HttpSession hs = request.getSession(false);
if(hs == null) {    
        response.sendRedirect("index.jsp");
    } else {
        out.println("<p>" + hs.getId() + "</p>");
    }
//if(hs.isNew()){
//response.sendRedirect("index.jsp");
//}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p><h1>Welcome!
            <%
                if(hs.getAttribute("u_name") != null){
                String uname = (String)hs.getAttribute("u_name");
                    out.println(uname);
                }else{
                response.sendRedirect("index.jsp");
                }
            %>
        </h1>
        </p>
    </body>
</html>
