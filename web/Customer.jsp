
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         
       <title>Bus Seats Allocation System</title>
    <a href="Customer.jsp"></a>
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
                font-family:Algerian;
                font-size:25px;
                color:black;
                height: 50px;
            }


            .con{
                /*background-color:  lightgray;*/
                font-family:Arvo-Regular;
                font-size:25px;
                color:black;
                border: 2px solid black; 
                border-radius: 25px 25px 25px 25px;

            }

            .footer {

                height :30px;
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
                <li class="selected">
                    <a href="index.html">Login</a>
                </li>
            </ul>
        </div>
        
        <div class="con" style="height: 700px">

                  <%
                         
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
            
                Class.forName("com.mysql.jdbc.Driver");
                   Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","");
                               Statement stmt=con.createStatement();
            String  q="insert into customer(firstname,lastname,nic,gender,mobile,email,address,username,password) values('"+ firstname +"','"+ lastname +"','"+ nic +"','"+ gender +"','"+ mobile +"','"+ email +"','"+ address+"','"+ username +"','"+password+"')";
             
             stmt.executeUpdate(q);
             
             out.println("<p style='color: white'>Your Details Adding Successfully...  Click Login button to continues and enter Your username and password to login system.. ");
                   
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='Customer.html'>Try Again</a>");
    }        
            
   %>
   
        </div>
    <div class="footer  col-12" style="height: 45px">
    &copy; 2020 Bus Seats Allocating System | RAD Project Group 33
    </div>
   
    </body>
</html>
