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

<!-- Hiển thị tên album (description) -->
<h2><%= product.getDescription() %></h2>

<table>
<tr>
    <td width="200"><b>Song title</b></td>
    <td width="150"><b>Audio Format</b></td>
</tr>
<tr>
    <td>You Are a Star</td>
    <td>
        <a href="<%= request.getContextPath() %>/sound/<%= product.getCode() %>/star.mp3">MP3</a>
    </td>
</tr>
<tr>
    <td>Don't Make No Difference</td>
    <td>
        <a href="<%= request.getContextPath() %>/sound/<%= product.getCode() %>/no_difference.mp3">MP3</a>
    </td>
</tr>
</table>

<p><a href="?action=viewAlbums">View list of albums</a></p>
<p><a href="?action=viewCookies">View all cookies</a></p>

</body>
</html>
