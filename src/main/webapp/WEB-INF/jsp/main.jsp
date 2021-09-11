<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="r" uri="http://shiro.apache.org/tags"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
${message}
<h1>欢迎</h1>
<r:hasPermission name="bookmanager:book:query">
   可以查询
</r:hasPermission>
<r:hasPermission name="bookmanager:book:add">
    <form action="/ssmshiro/user/add" method="post">
    账号:<input name="username"/><br/>
     密码:<input type="password" name="password"/><br/>
     <input type="submit" value="增加"/>
    </form>
</r:hasPermission>
<r:hasPermission name="bookmanager:book:update">
    修改
</r:hasPermission>
<r:hasPermission name="bookmanager:book:del">
    <a href="/ssmshiro/user/godel">删除用户</a>
</r:hasPermission>


</body>
</html>
