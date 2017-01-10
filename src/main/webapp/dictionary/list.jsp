<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>dictionary list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Dictionary</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>INDEX</th>
                <th>CHINESE</th>
                <th>ENGLISH</th>
                <th>PROPERTY</th>
                <th>SENTENCE</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="dictionary" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${dictionary.chinese}</td>
                <td>${dictionary.english}</td>
                <td>${dictionary.property}</td>
                <td>${dictionary.sentence}</td>
                <td><a href="${ctx}/dictionary/search/${dictionary.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/dictionary/remove/${dictionary.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="dictionary/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>