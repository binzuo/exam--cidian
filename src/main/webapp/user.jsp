<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ include file="commons/inc.jsp" %>
<html>
<head>
    <title>user page</title>
</head>
<body>
<c:if test="${sessionScope.user eq null}">
    <c:redirect url="/"/>
</c:if>
<h1>user page</h1>
user: ${sessionScope.user.username}<br/>
<form action="${ctx}/dictionary/queryAll" method="post">
    <input name="string"><br>
    <select name="property">
        <option value="">中文查英文</option>
        <option value="">英文查中文</option>
    </select><br>
    <input type="submit" value="查询">
</form>
<table border="1">
    <tr>
        <th>INDEX</th>
        <th>CHINESE</th>
        <th>ENGLISH</th>
        <th>PROPERTY</th>
        <th>SENTENCE</th>
    </tr>
    <c:forEach var="dictionary" items="${sessionScope.dictionary}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${dictionary.chinese}</td>
            <td>${dictionary.english}</td>
            <td>${dictionary.property}</td>
            <td>${dictionary.sentence}</td>
        </tr>
    </c:forEach>
</table>
<a href="${ctx}/user/logout">LOG OUT</a>
</body>
</html>
