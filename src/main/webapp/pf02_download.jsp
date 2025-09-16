<%@ page import="murach.business.Product" %>
<%
    // Lấy product từ session
    Product product = (Product) session.getAttribute("product");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cloud's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>

<h1>Downloads</h1>

<h2><%= product.getDescription() %></h2>
    
<table>
<tr>
    <th>Song title</th>
    <th>Audio Format</th>
</tr>
<tr>
    <td>Neon Lights</td>
    <td><a href="<%= request.getContextPath() %>/sound/<%= product.getCode() %>/neon.mp3">MP3</a></td>
</tr>
<tr>
    <td>Tank Hill</td>
    <td><a href="<%= request.getContextPath() %>/sound/<%= product.getCode() %>/tank.mp3">MP3</a></td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>

<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>