import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class register extends HttpServlet {


   public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
      
      response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      String first_name=request.getParameter("first_name");
      String last_name=request.getParameter("last_name");
      String password=request.getParameter("password");
      String email=request.getParameter("email");

try
{
createUser.create(first_name,last_name,password,email);
out.println("Thank you for register ! Please <a href='login.jsp'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
}