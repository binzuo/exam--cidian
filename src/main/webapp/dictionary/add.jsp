<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>dictionary add page</title>
    </head>
    <body>
        <h1>ADD Dictionary</h1>
        <form action="${ctx}/dictionary/add" method="post">
            <input name="chinese" placeholder="CHINESE"><br>
            <input name="english" placeholder="ENGLISH"><br>
            <select name="property" >
                <option value="名词">名词</option>
                <option value="动词">动词</option>
                <option value="副词">副词</option>
                <option value="形容词">形容词</option>
            </select><br>
            <textarea name="sentence" ></textarea><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>