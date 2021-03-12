<%@page import="com.mycompany.onlinebankingapp.ConnectionProvider"%>
<%@page import="com.mycompany.onlinebankingapp.transferclass"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Page</title>
    <style>
            .styled-table {
                border-collapse: collapse;
                margin: 25px 0;
                font-size: 0.9em;
                font-family: sans-serif;
                min-width: 400px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
            }
            .styled-table thead tr {
                background-color: #009879;
                color: #ffffff;
                text-align: left;
            }
            .styled-table th,
            .styled-table td {
                padding: 12px 15px;
            }
            .styled-table tbody tr {
                border-bottom: 1px solid #dddddd;
            }

            .styled-table tbody tr:nth-of-type(even) {
                background-color: #f3f3f3;
            }

            .styled-table tbody tr:last-of-type {
                border-bottom: 2px solid #009879;
            }
            .styled-table tbody tr.active-row {
                font-weight: bold;
                color: #009879;
            }
            a:link, a:visited {
                background-color:#0000FF;
                color: white;
                padding: 14px 25px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
              }

              a:hover, a:active {
                background-color: #009879;
              }
        </style>
    </head>
    <%@include file="header.jsp" %>
    <body>
        <%
            String geter = request.getParameter("status");
            if(geter!=null)
            {
        %>
        <script>
            alert("Available balance is less than the amount to be transferred, Please try again");
        </script>
        <%
            }
        %>
        <center>
            <h3>TRANSFER AMOUNT</h3>
            <%
                Integer id = Integer.parseInt(request.getParameter("eid"));
                Connection conn = ConnectionProvider.getconn();
                Statement stat = conn.createStatement();
                ResultSet rs = stat.executeQuery("select * from usermgmt where id = " + id);
            %>
            <table class="styled-table" cellpadding="5" style="font-family: verdana; font-size: 10pt;">
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Customer Name</th>
                        <th>Customer Email ID</th>
                        <th>Balance</th>
                    </tr>
                </thead>
                <%
                    if(rs.next()){
                        session.setAttribute("fromid",rs.getInt(1));
                        session.setAttribute("fromname", rs.getString(2));
                        session.setAttribute("frombal",rs.getDouble(4));
                %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getDouble(4) %></td>
                </tr>
            </table>
            <%
                Statement stat1 = conn.createStatement();
                ResultSet rs1 = stat1.executeQuery("select * from usermgmt where id <> " + id);
                List<transferclass> tlist = new ArrayList<>();
                List<String> namelist = new ArrayList<>();
                namelist.clear();
                tlist.clear();
                while(rs1.next())
                {
                    tlist.add(new transferclass(rs1.getString(2),rs1.getInt(1),rs1.getDouble(4)));
                    namelist.add(rs1.getString(2));
                }
                session.setAttribute("namelist",namelist);
                session.setAttribute("tlist",tlist);
            %>
            <br><br><br>
            </center>
            <form action="checktransfer.jsp" method="POST">
                <table cellpadding="5" style="font-family: verdana; font-size: 10pt;">
                    <tr>
                        <td style=" width: 20px"></td>
                        <td><b>Choose the recipient : </b></td>
                        <td style=" width: 20px"></td>
                        <td>
                            <select name="recipient" required="required" style=" width: 200px">
                                <%
                                    for(int i = 0 ;i<namelist.size();i++){
                                %>
                                <option><%= namelist.get(i) %></option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr style=" height: 20px"><td style=" width: 20px"></td><td></td><td style=" width: 20px"></td><td></td></tr>
                    <tr>
                        <td style=" width: 20px"></td>
                        <td><b>Enter amount to be transferred :  </b></td>
                        <td style=" width: 20px"></td>
                        <td><input name="amount" type="text" required="required" style=" width: 200px"/></td>
                    </tr>
                    <tr style=" height: 20px"><td style=" width: 20px"></td><td></td><td style=" width: 20px"></td><td></td></tr>
                    <tr>
                        <td style=" width: 20px"></td>
                        <td></td>
                        <td style=" width: 20px"></td>
                        <td><input value="Transfer" type="submit"/></td>
                    </tr>
                </table>
            </form>
                <%
                    }
                %>  
    </body>
</html>
