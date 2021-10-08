
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                src: local('☺'),  url('../fonts/Arvo-Regular.woff') format('woff'),  url('../fonts/Arvo-Regular.ttf') format('truetype'),  url('../fonts/Arvo-Regular.svg') format('svg');
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
                font-family: lightgray;
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
                font-family:Algerian;
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
                width:80%;
            }

            .footer {

                height :20px;
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
        
        <div class="header col-12 " style="height: 250px">
            <h2 style="text-align: center; text-shadow:-2px -2px 0 #000000;">Bus Seats Allocating System</h2>
        </div>

        <div class="box col-12">
            <ul id="navigation">
                <li>
                    <a href="Home.html">Home</a>
                </li>
                
                <li>
                    <a href="ShowBus.jsp">Bus</a>
                </li>
                
                <li>
                    <a href="ShowCustomer.jsp">Customer</a>
                </li>
                
                <li class="selected">
                    <a href="Booking.html">Booking</a>
                </li>

                <li> 
                    <a href="logout.jsp">Logout</a>
                </li>
                
            </ul>
        </div>
        
    <center>
         <h3  style= "color:#cca633; font-size:35px">Booking Details</h3>
    </center>
    
    <center>
        <div class="con">

            <%
                try {

                Class.forName("com.mysql.jdbc.Driver");
                   Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
                               Statement stmt=con.createStatement();
                   String q = "select * from booking order by dates ASC";
                     ResultSet rs = stmt.executeQuery(q);
                    rs = stmt.executeQuery(q);
                  
                    rs = stmt.executeQuery(q);
                    out.println("<table border=1 width:100% >");
                    out.println("<tr><th> Name </th><br></br><th> NIC </th><br></br><th> Mobile </th><br></br><th> Date </th><br></br><th> Bus Number </th><br></br><th> Book seat </th><br></br><th>");
                    while (rs.next()) {
                        //  int id=rs1.getInt("bid");
                        String name = rs.getString("name");
                        String nic = rs.getString("nic");
                        String mobile = rs.getString("mobile");
                        String dates = rs.getString("dates");
                        String busno = rs.getString("busno");
                        int seat = Integer.parseInt(rs.getString("seat"));

                        out.println("<tr><td>" + name + "</td><td>" + nic + "</td><td>" + mobile + "</td><td>" + dates + "</td><td>" + busno + "</td><td>" + seat + "</td><td>");
                    }
                }
                 catch (Exception e) {
                    out.print(e);
                }

            %>

        </div><br>
            </center>
 
    </body>
</html>
