<%-- 
    Document   : list
    Created on : Oct 26, 2023, 6:47:30 PM
    Author     : PHUONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <style>
            .pagination {

                display: inline-block;
                margin-top: 20px;

            }
            .pagination a {
                color: black;
                font-size: 15px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                border-radius: 5px;
                transition: background-color .3s;
                border: 1px solid black;
                border-color: gray;
                margin-left: 200px;
                margin: 0 4px;

            }
            .pagination a.active {
                background-color: black;
                color: white;
                border-radius: 5px;

            }
            .pagination a:hover:not(.active) {
                background-color: white;

            }
        </style>
    </head>
    <body>

        <div class="content">
            <center>
                <c:set var="page" value="${requestScope.page}"/>
                <div class="pagination">
                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                       
                        
                        <a class="${i==page?"active":""}" href="home?page=${i}">${i}</a>
                        
                    </c:forEach>
                </div>
            </center>
        </div>

    </body>
</html>
