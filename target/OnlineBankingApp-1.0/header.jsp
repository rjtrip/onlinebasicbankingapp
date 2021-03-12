<%--<%@page import="IntializeObjects.CookieDetail"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body style="background-color: azure;">
        <nav class="navbar navbar-inverse" style="background-color: blue; font-size: 16px">
            <div class="container-fluid">
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>                        
                </button>
                  <a class="navbar-brand" href="index.jsp"><b>Western Saving Bank</b></a>
              </div>
              <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="ListCustomer">View Customers</a></li>
                  <li><a href="ListTransaction">View All Transactions</a></li>
                </ul>
              </div>
            </div>
          </nav>
    </body>
</html>
