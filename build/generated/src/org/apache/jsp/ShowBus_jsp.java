package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class ShowBus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Bus Seats Allocation System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            @font-face {\n");
      out.write("                font-family: 'Arvo-Regular';\n");
      out.write("                src: url('../fonts/Arvo-Regular.eot');\n");
      out.write("                src: local('?'),  url('../fonts/Arvo-Regular.woff') format('woff'),  url('../fonts/Arvo-Regular.ttf') format('truetype'),  url('../fonts/Arvo-Regular.svg') format('svg');\n");
      out.write("                font-weight: normal;\n");
      out.write("                font-style: normal;\n");
      out.write("            }\n");
      out.write("            body{\n");
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
      out.write("                font-family:Times New Roman;\n");
      out.write("                font-size:25px;\n");
      out.write("                color:black;\n");
      out.write("                height: 50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .con{\n");
      out.write("                background-color:  lightgray;\n");
      out.write("                font-family:Arvo-Regular;\n");
      out.write("                font-size:25px;\n");
      out.write("                color:black;\n");
      out.write("                border: 2px solid black; \n");
      out.write("                border-radius: 10px 10px 10px 10px;\n");
      out.write("                width: 80%;\n");
      out.write("            }\n");
      out.write("            .footer {\n");
      out.write("\n");
      out.write("                height :25px;\n");
      out.write("                text-decoration: italic; \n");
      out.write("                text-align : center ;\n");
      out.write("                background-color: #20b2aa;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

    if(session.getAttribute("username")== null){
        response.sendRedirect("index.html");
    }
    
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"header col-12 \" style=\"height: 220px\">\n");
      out.write("\n");
      out.write("            <h2 style=\"text-align: center; text-shadow:-2px -2px 0 #000000;\">Bus Seats Allocating System</h2>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"box col-12\">\n");
      out.write("            <ul id=\"navigation\">\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Home.jsp\">Home</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                <li class=\"selected\">\n");
      out.write("                    <a href=\"ShowBus.jsp\">Bus</a>\n");
      out.write("                </li>\t\t\t\n");
      out.write("                \n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Booking.html\">Booking</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"Contact.html\">Contact</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("               <li> \n");
      out.write("                    <a href=\"logout.jsp\">Logout</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("            <br>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    <form action=\"ShowBus.jsp\" method=\"post\">\n");
      out.write("    <center>\n");
      out.write("       <h3  style= \"color:#cca633; font-size:35px\">Already booking seats number and Bus Details</h3> \n");
      out.write("       <h3 style=color:white>Please refer below tabels before you booking a bus seats. Check the table for, to identify a available seats</h3>\n");
      out.write("       <input type=\"date\" name=\"date\">\n");
      out.write("       <button type=\"submit\" name=\"submit\">View</button>\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        <div class=\"con\">\n");
      out.write("        \n");
      out.write("            \n");
      out.write("        ");


            Connection al = null;
            Statement stm = null;
            ResultSet rs1t;
            String w = "";
            
            String day="";

            
                try{
                String date = request.getParameter("date");
                String ardate[] = date.split("-");
                day = ardate[2];
                }catch(NullPointerException e){}
                
                
try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                al = DriverManager.getConnection("jdbc:mysql://localhost/bus", "root", "");

                stm = al.createStatement();
                w = "select * from booking where busno='B001'";
                rs1t = stm.executeQuery(w);
                out.println("<table border=1 width:100% >");
                out.println("Already booked seats number");
                out.println("<h6 style=color:red>Bus number B001</h6>");
                
                while (rs1t.next()) {
                    String regdate[] = rs1t.getString("dates").split("-");
                    if(regdate[2].equals(day)){
                    String busno = rs1t.getString("busno");
                    String seat = rs1t.getString("seat");

                    out.println("<td>" + seat + "</td>");
                }
                }
                
            } catch (Exception e) {

                out.print(e);
            }
 
            
            ResultSet rs1t2;
            String x = "";

            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                al = DriverManager.getConnection("jdbc:mysql://localhost/bus", "root", "");

                stm = al.createStatement();
                x = "select * from booking where busno='B005'";
                rs1t2 = stm.executeQuery(x);
                out.println("<table border=1 width:100% >");
                out.println("<h6 style=color:red>Bus number B005</h6>");
                
                while (rs1t2.next()) {

                    String busno = rs1t2.getString("busno");
                    String seat = rs1t2.getString("seat");

                    out.println("<td>" + seat + "</td>");
                }
                
            } catch (Exception e) {

                out.print(e);
            }

        
      out.write("\n");
      out.write("           \n");
      out.write("            \n");
      out.write("        ");

            Connection c1 = null;
            Statement st = null;
            ResultSet rs1;
            String q = "";

            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c1 = DriverManager.getConnection("jdbc:mysql://localhost/bus", "root", "");

                st = c1.createStatement();
                q = "select * from bus";
                rs1 = st.executeQuery(q);
                out.println("<table  border=1>");
                out.println("<hr>");
                out.println("Bus Details");
                out.println("<tr><th>Bus Type</th><th>Bus Number</th><th>Departure Place</th><th>Arrival Place</th><th>Departure Time</th><th>Arrival Time</th><th>Driver</th></tr>");
                 out.println("<br>");
                while (rs1.next()) {

                    String type = rs1.getString("type");
                    String busno = rs1.getString("busno");
                    String arrivalplace = rs1.getString("departureplace");
                    String departureplace = rs1.getString("arrivalplace");
                    String arrivaltime = rs1.getString("departuretime");
                    String departuretime = rs1.getString("arrivaltime");
                    String drivername = rs1.getString("drivername");

                    out.println("<tr><td>" + type + "</td><td>" + busno + "</td><td>" + departureplace + "</td><td>" + arrivalplace + "</td><td>" + departuretime + "</td><td>" + arrivaltime + "</td><td>" + drivername + "</td></tr>");
                }
            } catch (Exception e) {

                out.print(e);
            }

        
      out.write("\n");
      out.write("       <br>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    <!--<div class=\"footer  col-12\" style=\"height: 45px\">\n");
      out.write("    &copy; 2020 Bus Seats Allocating System | RAD Project Group 33\n");
      out.write("    </div> -->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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
