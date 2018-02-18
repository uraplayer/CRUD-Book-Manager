<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lib Manager</title>

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

        .tg  {
            background-color: #c6e2ff
        }
    </style>
</head>
<body>

<br/>

<h2>Books</h2>

<c:url var="addAction" value="/books/search"/>

<form:form action="${addAction}" commandName="book">
    <table>
        <tr>
            <input type="text" name="searchTitle" id="searchTitle"
                   placeholder="input title"/>

            <input type="submit"
                   value="<spring:message text="search"/>"/>
        </tr>
    </table>
</form:form>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Description</th>
            <th width="120">Author</th>
            <th width="120">ISBN</th>
            <th width="120">Year</th>
            <th width="80">isRead</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td><a href="/bookdata/${book.id}">${book.title}</a></td>
                <td>${book.description}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
                <td>${book.printYear}</td>
                <td>${book.readAlready}</td>
                <td><a href="<c:url value='/edit/${book.id}'/>">edit</a></td>
                <td><a href="<c:url value='/remove/${book.id}'/>">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<div id="pagination">
    <c:url value="/books" var="prev">
        <c:param name="page" value="${page-1}"/>
    </c:url>
    <c:if test="${page > 1}">
        <a href="<c:out value="${prev}" />" class="pn prev">back</a>
    </c:if>

    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
        <c:choose>
            <c:when test="${page == i.index}">
                <span>${i.index}</span>
            </c:when>
            <c:otherwise>
                <c:url value="/books" var="url">
                    <c:param name="page" value="${i.index}"/>
                </c:url>
                <a href='<c:out value="${url}" />'>${i.index}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:url value="/books" var="next">
        <c:param name="page" value="${page + 1}"/>
    </c:url>
    <c:if test="${page + 1 <= maxPages}">
        <a href='<c:out value="${next}" />' class="pn next">next</a>
    </c:if>
</div>

<h2>add book</h2>

<c:url var="addAction" value="/books/add"/>

<form:form action="${addAction}" commandName="book">
    <table>
        <c:if test="${!empty book.title}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="title">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="title"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="description"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="author">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <c:if test="${!empty book.title}">
                <td>
                    <form:input path="author" readonly="true" disabled="true"/>
                    <form:hidden path="author"/>
                </td>
            </c:if>
            <c:if test="${empty book.title}">
            <td>
                <form:input path="author"/>
            </td>
            </c:if>
        </tr>
        <tr>
            <td>
                <form:label path="isbn">
                    <spring:message text="ISBN"/>
                </form:label>
            </td>
            <td>
                <form:input path="isbn"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="printYear">
                    <spring:message text="Year"/>
                </form:label>
            </td>
            <td>
                <form:input path="printYear"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty book.title}">
                    <input type="submit"
                           value="<spring:message text="Edit Book"/>"/>
                </c:if>
                <c:if test="${empty book.title}">
                    <input type="submit"
                           value="<spring:message text="Add Book"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
