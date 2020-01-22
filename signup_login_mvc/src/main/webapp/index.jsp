<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>
                    <h3 style = "margin-left: 25px; border:1px solid greenyellow;width: 60px">Login!</h3>
                </td>
                <td>
                    <h3><a href="signup.jsp" style="margin-left: 5px;border:1px solid greenyellow;width: 100px;color:black">SignUp!</a></h3>
                </td>
            </tr>
        </table>
        
        
       
       
        <form method="post" action="LoginServlet">
            <table bgcolor="lightgreen" style="margin-left:20px">
                <tr>
                    <td>
                        Username
                    </td>
                    <td>
                        <input type="text" name="username" placeholder="Username">
                    </td>
                </tr>
                <tr>
                     <td>
                        Password
                    </td>
                    <td>
                        <input type="password" name="password" placeholder="Password">
                    </td>
                </tr>
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <%
                String err = (String) getServletContext().getAttribute("passwd_msg");
                if(err != null)
                    out.println(err + "<br>");
                    getServletContext().setAttribute("passwd_msg", null);
            %> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                         <input type="submit" value="Submit" >
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
