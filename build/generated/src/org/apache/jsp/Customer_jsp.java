package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Customer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("         \n");
      out.write("       <title>Bus Seats Allocation System</title>\n");
      out.write("    <a href=\"Customer.jsp\"></a>\n");
      out.write("     <style>\n");
      out.write("          \n");
      out.write("@font-face {\n");
      out.write("\tfont-family: 'Arvo-Regular';\n");
      out.write("\tsrc: url('../fonts/Arvo-Regular.eot');\n");
      out.write("\tsrc: local('☺'),  url('../fonts/Arvo-Regular.woff') format('woff'),  url('../fonts/Arvo-Regular.ttf') format('truetype'),  url('../fonts/Arvo-Regular.svg') format('svg');\n");
      out.write("\tfont-weight: normal;\n");
      out.write("\tfont-style: normal;\n");
      out.write("}\n");
      out.write("    body{\n");
      out.write("                background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.5)), url('image/1.jpg');\n");
      out.write("                background-size: cover;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-attachment:fixed;\n");
      out.write("                background-position : center center;\n");
      out.write("\n");
      out.write("\n");
      out.write("            } \n");
      out.write("            [class*=\"col-\"]{\n");
      out.write("                float:left;\n");
      out.write("                padding:10px;\n");
      out.write("                height:25%;\n");
      out.write("            }\n");
      out.write("            *{\n");
      out.write("                box-sizing: border-box;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .col-1 {width: 8.33%;} \n");
      out.write("            .col-2{width :16.66%; }\n");
      out.write("            .col-3 {width : 25%; }\n");
      out.write("            .col-4 {width:33.33%;} \n");
      out.write("            .col-5 {width : 41.66%;} \n");
      out.write("            .col-6{ width : 50%; }\n");
      out.write("            .col-7 {width : 58.33%;} \n");
      out.write("            .col-8 {width : 66.66%;} \n");
      out.write("            .col-9 {width :75%; }\n");
      out.write("            .col-10{width: 83.33%;} \n");
      out.write("            .col-11 {width :91.66%;}\n");
      out.write("            .col-12 {width : 100%;} \n");
      out.write("\n");
      out.write("            .row{\n");
      out.write("                content:\"\";\n");
      out.write("                clear:both;\n");
      out.write("                display:table;\n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                background-color:#dcdcdc;\n");
      out.write("                background-image: url(\"image/trs.jpg\");\n");
      out.write("                filter:alpha(opacity=80);\n");
      out.write("                height:250px;\n");
      out.write("                border-radius: 25px 25px 0px 0px;\n");
      out.write("                font-family:Sitka Banner;\n");
      out.write("                font-size:60px;\n");
      out.write("                color: #66ffb3 ;\n");
      out.write("                padding:1px;\n");
      out.write("                line-height:0.5px;\t\t\t\n");
      out.write("            }\n");
      out.write("            #navigation {\n");
      out.write("                display: inline-block;\n");
      out.write("                list-style: none;\n");
      out.write("                width: 800px;\n");
      out.write("                margin: 7px 10px 3px 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            #navigation li {\n");
      out.write("                float: left;\n");
      out.write("                margin-left: 10px;\n");
      out.write("            }\n");
      out.write("            #navigation li:first-child {\n");
      out.write("                margin-left: 0;\n");
      out.write("            }\n");
      out.write("            #navigation li a {\n");
      out.write("                color: #004d4d;\n");
      out.write("                font-family: Times New Roman;\n");
      out.write("                font-size: 18px;\n");
      out.write("                line-height: 25px;\n");
      out.write("                padding: 6px 15px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("            #navigation li a:hover, #navigation li.selected a {\n");
      out.write("                color: #ff00ff;\n");
      out.write("                background-color: #66ffb3;\n");
      out.write("                border-radius: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .box{\n");
      out.write("                background-color:  #20b2aa;\n");
      out.write("                font-family:Algerian;\n");
      out.write("                font-size:25px;\n");
      out.write("                color:black;\n");
      out.write("                height: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .con{\n");
      out.write("                /*background-color:  lightgray;*/\n");
      out.write("                font-family:Arvo-Regular;\n");
      out.write("                font-size:25px;\n");
      out.write("                color:black;\n");
      out.write("                border: 2px solid black; \n");
      out.write("                border-radius: 25px 25px 25px 25px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .footer {\n");
      out.write("\n");
      out.write("                height :30px;\n");
      out.write("                text-decoration: italic; \n");
      out.write("                text-align : center ;\n");
      out.write("                background-color: #20b2aa;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

    if(session.getAttribute("username")== null){
        response.sendRedirect("index.html");
    }
    
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"header col-12 \" style=\"height: 220px\">\n");
      out.write("            <h2 style=\"text-align: center; text-shadow:-2px -2px 0 #000000;\">Bus Seats Allocating System</h2>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"box col-12\">\n");
      out.write("            <ul id=\"navigation\">\n");
      out.write("                <li class=\"selected\">\n");
      out.write("                    <a href=\"index.html\">Login</a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div class=\"con\" style=\"height: 700px\">\n");
      out.write("\n");
      out.write("                  ");

                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          String firstname=request.getParameter("firstname");
             String lastname=request.getParameter("lastname");
             String nic=request.getParameter("nic");
             String gender=request.getParameter("gender");
             String mobile=request.getParameter("mobile");
             String email=request.getParameter("email");
             String address=request.getParameter("address");
             String username=request.getParameter("username");
            String password=request.getParameter("password");
            
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
             
             st = c1.createStatement();
             q="insert into customer(firstname,lastname,nic,gender,mobile,email,address,username,password) values('"+ firstname +"','"+ lastname +"','"+ nic +"','"+ gender +"','"+ mobile +"','"+ email +"','"+ address+"','"+ username +"','"+password+"')";
             
             st.executeUpdate(q);
             
             out.println("<h3 style='color: white'>Your Details Adding Successfully...  Click Login button to continues and enter Your username and password to login system.. </h3>");
                   
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='Customer.html'>Try Again</a>");
    }        
            
   
      out.write("\n");
      out.write("   \n");
      out.write("        </div>\n");
      out.write("    <div class=\"footer  col-12\" style=\"height: 45px\">\n");
      out.write("    &copy; 2020 Bus Seats Allocating System | RAD Project Group 33\n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
