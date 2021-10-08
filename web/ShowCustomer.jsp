
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                border-radius: 25px 25px 25px 25px;
                width:95%;
            }

            .footer {
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
        
        <div class="header col-12 " style="height: 250px">
            <h2 style="text-align: center; text-shadow:-2px -2px 0 #000000;">Bus Seats Allocating System</h2>
        </div>

       
        <div class="box col-12">
            <ul id="navigation">
                <li >
                    <a href="Adminhome.jsp">Home</a>
                </li>
                
                <li>
                    <a href="Bus.html">Bus</a>
                </li>
                
                <li class="selected">
                    <a href="ShowCustomer.jsp">Customer</a>
                </li>
                
                <li> 
                    <a href="ShowBooking.jsp">Booking</a>
                </li>

                <li> 
                    <a href="logout.jsp">Logout</a>
                </li>
            </ul>
        </div>
        
    <center>
            <h3  style= "color:#cca633; font-size:35px">Customers Details</h3><br>
            </center>
    
    <div class="sen">
    <center>
        <div class="con">
            <%

                Connection c1 = null;
                Statement st = null;
                ResultSet rs1;
                String q = "";

                try {

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    c1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/bus", "root", "");

                    st = c1.createStatement();
                    q = "select * from customer";
                    rs1 = st.executeQuery(q);
                    out.println("<table border=1 width:100% >");
                    out.println("<tr><th>FirstName</th><th>LastName</th><th>NIC</th><th>Gender</th><th>Mobile</th><th>Email</th><th>Address</th><th>");
                    while (rs1.next()) {
                        String firstname = rs1.getString("firstname");
                        String lastname = rs1.getString("lastname");
                        String nic = rs1.getString("nic");
                        String gender = rs1.getString("gender");
                        String mobile = rs1.getString("mobile");
                        String email = rs1.getString("email");
                        String address = rs1.getString("address");
                        String username = rs1.getString("username");
                        out.println("<tr> <td>" + firstname + "</td><td>" + lastname + "</td><td>" + nic + "</td><td>" + gender + "</td> <td>" + mobile + "</td> <td>" + email + "</td> <td>" + address + "</td><td>");
                    }
                } catch (Exception e) {
                    out.print(e);
                }

            %>
        </div>  
        <br><br>   
    </center>
    </div>
        
        <!--<div>
        <div class="footer  col-12" style="height: auto">
            &copy; 2020 Bus Seats Allocating System | RAD Project Group 33
        </div>
        </div> -->
        
</body>
</html>
