<%-- 
    Document   : index
    Created on : May 22, 2020, 10:55:12 PM
    Author     : DELL
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Due</title>
    </head>
    <style>
        table,td,th{
            border: 1.5px solid black;
            border-collapse: collapse;
        }
        th{
            font-weight: bold;
            font-size: x-large;
        }
        td{
            font-size: large;
            padding-left: 5px;
            background-color: white;
        }
        
       form{
            padding-top: 30px;
        }
        .tab{
            padding-top: 100px;

        }
        .but1,.but2{
            border: 1px solid black;
            background-color: greenyellow;
            width: 80px;
            margin-left: 40px;
            margin-right: 40px;
        }
        .but1:hover{
            background-color: red;
            border: 1px solid black;
        }
        .but2:hover{
            background-color: yellow ;
            border: 1px solid black;
        }
        
        h1{
            background-color: greenyellow;
            border: 1px solid black;
            padding-bottom: 10px;
            padding-top: 10px;
        }
        body{
            background-color: 	rgb(250,250,250);
        }
       
    </style>
    
    
    <script>
        function goBack() {
          window.history.back();
        }
    </script>
    <body>
    <center>
        <h1>3+ Months Due Users</h1>
        <div class="tab">
            <table style="width:600px;height: 200px;">
                <tr style="background-color: greenyellow">
                    <th>Name</th>
                    <th>Amount</th>
                    <th>Account Number</th>
                    <th>Months Pending</h>
                </tr>
        
    
        <%
            Connection conn=null;
            Statement st=null;
            ResultSet rs=null;
           
            
            try
            {
                Class.forName( "com.mysql.jdbc.Driver");
                conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/newjsp","root","");
                st=conn.createStatement();
                
                
                String qry="select * from jsp where monpaid>2";
                rs=st.executeQuery(qry);
                
                while(rs.next())
                {
                    
                    %>
                    <tr>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
                        <td><%=rs.getString(4) %></td>
                        <td><%=rs.getString(5) %></td>
                        
                    </tr>
                    <%
                        
                        
                }
                
                
        }
             catch(Exception ex){}
         %>
        </table>
        </div>
        <form  >
            <button class="but2" type="submit" value="submit">REPORT</button>
            <button  class="but1" onclick="goBack()">BACK</button>

         </form>
         
         
    </center>
    </body>
</html>
