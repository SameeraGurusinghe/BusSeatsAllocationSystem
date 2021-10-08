
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bus Seats Allocation System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <style>

            @font-face {
                font-family: 'Arvo-Regular';
                src: url('../fonts/Arvo-Regular.eot');
                src: local('?'),  url('../fonts/Arvo-Regular.woff') format('woff'),  url('../fonts/Arvo-Regular.ttf') format('truetype'),  url('../fonts/Arvo-Regular.svg') format('svg');
                font-weight: normal;
                font-style: normal;
            }
            body{
                background: linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.5)), url('image/1.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment:fixed;
                background-position : center center;


            } 
            [class*="col-"]{
                float:left;
                padding:10px;
                height:25%;
            }
            *{
                box-sizing: border-box;
            }

            .col-1 {width: 8.33%;} 
            .col-2{width :16.66%; }
            .col-3 {width : 25%; }
            .col-4 {width:33.33%;} 
            .col-5 {width : 41.66%;} 
            .col-6{ width : 50%; }
            .col-7 {width : 58.33%;} 
            .col-8 {width : 66.66%;} 
            .col-9 {width :75%; }
            .col-10{width: 83.33%;} 
            .col-11 {width :91.66%;}
            .col-12 {width : 100%;} 

            .row{
                content:"";
                clear:both;
                display:table;
            }
            .header{
                background-color:#dcdcdc;
                background-image: url("image/trs.jpg");
                filter:alpha(opacity=80);
                height:250px;
                border-radius: 25px 25px 0px 0px;
                font-family:Sitka Banner;
                font-size:60px;
                color: #66ffb3 ;
                padding:1px;
                line-height:0.5px;			
            }
            #navigation {
                display: inline-block;
                list-style: none;
                width: 800px;
                margin: 7px 10px 3px 0;
                padding: 0;
            }
            #navigation li {
                float: left;
                margin-left: 10px;
            }
            #navigation li:first-child {
                margin-left: 0;
            }
            #navigation li a {
                color: #004d4d;
                font-family: Times New Roman;
                font-size: 18px;
                line-height: 25px;
                padding: 6px 15px;
                text-decoration: none;
            }
            #navigation li a:hover, #navigation li.selected a {
                color: #ff00ff;
                background-color: #66ffb3;
                border-radius: 5px;
            }

            .box{
                background-color:  #20b2aa;
                font-family:Times New Roman;
                font-size:25px;
                color:black;
                height: 50px;
            }

            .con{
                background-color:  lightgray;
                font-family:Arvo-Regular;
                font-size:25px;
                color:black;
                border: 2px solid black; 
                border-radius: 10px 10px 10px 10px;
                width: 80%;
            }
            .footer {

                height :25px;
                text-decoration: italic; 
                text-align : center ;
                background-color: #20b2aa;

            }

        </style>
    </head>

    <body>
        
        <%
    if(session.getAttribute("username")== null){
        response.sendRedirect("index.html");
    }
    %>
        
        <div class="header col-12 " style="height: 220px">

            <h2 style="text-align: center; text-shadow:-2px -2px 0 #000000;">Bus Seats Allocating System</h2>
        </div>


        <div class="box col-12">
            <ul id="navigation">
                <li>
                    <a href="Home.jsp">Home</a>
                </li>
                
                <li class="selected">
                    <a href="ShowBus.jsp">Bus</a>
                </li>			
                
                <li>
                    <a href="Booking.html">Booking</a>
                </li>

                <li>
                    <a href="Contact.html">Contact</a>
                </li>
                
               <li> 
                    <a href="logout.jsp">Logout</a>
                </li>
                
            </ul>
            
            <br>
        </div>
    
    <form action="ShowBus.jsp" method="post">
    <center>
       <h3  style= "color:#cca633; font-size:35px">Already booking seats number and Bus Details</h3>
       
    </center>
    
    <center>
        <div class="con">
            <input type="date" class="form-control" name="date">
            <button type="submit" name="submit">View</button><br>
        
            
        <%

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
                out.println("<h4 style=color:green>Select date and Click 'View' button to see already booked seats number</h4>");
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
            
            String day2="";
            
             try{
                String date = request.getParameter("date");
                String ardate[] = date.split("-");
                day2 = ardate[2];
                }catch(NullPointerException e){}

            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                al = DriverManager.getConnection("jdbc:mysql://localhost/bus", "root", "");

                stm = al.createStatement();
                x = "select * from booking where busno='B005'";
                rs1t2 = stm.executeQuery(x);
                out.println("<table border=1 width:100% >");
                out.println("<h6 style=color:red>Bus number B005</h6>");
                
                while (rs1t2.next()) {
                    
                    String regdate[] = rs1t2.getString("dates").split("-");
                    if(regdate[2].equals(day2)){

                    String busno = rs1t2.getString("busno");
                    String seat = rs1t2.getString("seat");

                    out.println("<td>" + seat + "</td>");
                }
                }
                
            } catch (Exception e) {

                out.print(e);
            }

        %>
           
            
        <%
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

        %>
       <br>
        </div>
       
    </center>
    
    <!--<div class="footer  col-12" style="height: 45px">
    &copy; 2020 Bus Seats Allocating System | RAD Project Group 33
    </div> -->

    </body>
</html>