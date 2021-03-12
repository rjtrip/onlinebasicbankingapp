<%@page contentType="text/html" %>
<jsp:useBean id="rs" scope="request" type="java.sql.ResultSet" />
<html>
    <head>
        <title>Show All Customers</title>
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
    <body style="font-family: verdana; font-size: 10pt;">
        <%@include file="header.jsp" %>
        <center>
            <table class="styled-table" cellpadding="5" style="font-family: verdana; font-size: 10pt;">
                <thead>
                    <tr>
                        <th>Customer ID</th>
                        <th>Customer Name</th>
                        <th>Customer Email ID</th>
                        <th>Balance</th>
                        <th></th>
                    </tr>
                </thead>
                <%
                    while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(3) %></td>
                    <td><%= rs.getDouble(4) %></td>
                    <td><a href="transferAmount.jsp?eid=<%= rs.getInt(1) %>">Transfer</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </center>
    </body>
</html>