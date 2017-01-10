<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>dictionary edit page</title>
    </head>
    <body>
        <h1>EDIT Dictionary</h1>
        <form action="${ctx}/dictionary/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.dictionary.id}">
            CHINESE: <input name="chinese" value="${sessionScope.dictionary.chinese}"><br>
            ENGLISH: <input name="english" value="${sessionScope.dictionary.english}"><br>
            PROPERTY: <input name="property" value="${sessionScope.dictionary.property}"><br>
            SENTENCE: <input name="sentence" value="${sessionScope.dictionary.sentence}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>