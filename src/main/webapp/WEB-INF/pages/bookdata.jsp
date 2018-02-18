<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 18px;
            padding-top: 8px;
            padding-right: 3px;
            padding-left: 3px;
            padding-bottom: 8px;
            border-style: solid;
            border-width: 2px;
            overflow: hidden;
            word-break: normal;
            border-color: #aaaaaa;
            color: #333344;
            background-color: #fffddd;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 18px;
            font-weight: normal;
            padding: 10px 6px;
            border-style: solid;
            border-width: 2px;
            overflow: hidden;
            word-break: normal;
            border-color: #070707;
            color: #070707;
            background-color: #f2ee02;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>

<body>
<a href="../../index.jsp">home</a>
<h2>Book Info</h2>
<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Title</th>
        <th width="120">Description</th>
        <th width="120">Author</th>
        <th width="120">ISBN</th>
        <th width="120">Year</th>
        <th width="80">isRead</th>
    </tr>
    <tr>
        <td>${book.id}</td>
        <td>${book.title}</td>
        <td>${book.description}</td>
        <td>${book.author}</td>
        <td>${book.isbn}</td>
        <td>${book.printYear}</td>
        <td>${book.readAlready}</td>
    </tr>
</table>
</body>
</html>