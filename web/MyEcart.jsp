<%-- 
    Document   : MyEcart
    Created on : Nov 6, 2023, 7:11:47 AM
    Author     : PHUONG
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            a{
                text-decoration: none;
            }
            table{
                border-collapse: collapse;
                background: white;
                border: cyan;

            }
        </style>
    </head>
    <body>
          <jsp:include page="Menu.jsp"></jsp:include>
       
    <center>
        <table border="1px" width="40%">
           
            <tr>
                
                <th>No</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Money</th>
                <th>Action</th>
            </tr>
          
            <c:set var="c" value="${sessionScope.cart}"/>
            <c:set var="t" value="0"/>
            <c:forEach items="${c.items}" var="i">
                <c:set var="t" value="${t+1}"/>
                <tr>
                    <td>${t}</td> 
                    <td>${i.product.name}</td>
                    <td>
                        <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                        <input type="text" readonly value="${i.quantity}"/>
                        <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                    </td>
                    <td><fmt:formatNumber pattern="##.#" value="${i.price}"/></td>
                     <td><fmt:formatNumber pattern="##.#" value="${i.quantity*i.price}"/></td>
                     <td>
                         <form action="process" method="post">
                             <input type="hidden" name="id" value="${i.product.id}"/>  
                             <input type="submit" value="Return item"/>
                         
                         </form>
                     </td>
                
                </tr>
            </c:forEach>
        </table>
            <p></p>
            <form action="checkout" method="post">
                <input type="submit" value="Check out"/>
            </form>
            <hr/>
            <h2 style="color: chocolate"> <a href="home">Continue Shopping</a></h2>
            </center>
    </body>
</html>
