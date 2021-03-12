<%@page import="com.mycompany.onlinebankingapp.transferclass"%>
<%@page import="com.mycompany.onlinebankingapp.ConnectionProvider"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Transfer</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%
            Connection conn = ConnectionProvider.getconn();
            ArrayList<transferclass> tlist = new ArrayList<>();
            ArrayList<String> namelist = new ArrayList<>();
            tlist = (ArrayList<transferclass>) session.getAttribute("tlist");
            namelist = (ArrayList<String>) session.getAttribute("namelist");
            int fromid = (Integer) session.getAttribute("fromid");
            String fromname = (String) session.getAttribute("fromname");
            Double frombal = (Double) session.getAttribute("frombal");
            String name = request.getParameter("recipient");
            Double amt = Double.parseDouble(request.getParameter("amount"));
            int toid = tlist.get(namelist.indexOf(name)).getId();
            if(frombal>amt)
            {
                
                Statement stat = conn.createStatement();
                stat.execute("update usermgmt set amount = amount - " + amt + " where id = " + fromid);
                Statement stat1 = conn.createStatement();
                stat1.execute("update usermgmt set amount = amount + " + amt + " where id = " + toid);
                PreparedStatement stat2 = conn.prepareCall("insert into transferentry(fromid,fromname,toid,toname,amount) values(?,?,?,?,?)");
                stat2.setInt(1,fromid);
                stat2.setString(2,fromname);
                stat2.setInt(3,toid);
                stat2.setString(4,name);
                stat2.setDouble(5,amt);
                stat2.executeUpdate();
        %>
        <center>
            <h3 style="color: green"><b>Transaction Successful</b></h3>
            <h5>You will be redirected in 5 seconds</h5>
        </center>
        <script>
         setTimeout(function(){
            window.location.href = 'ListCustomer';
         }, 5000);
        </script>
        <%
            }
            else
            {
                response.sendRedirect("transferAmount.jsp?eid=" + fromid + "&status=failed");
            }
        %>
    </body>
</html>
