<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%--@elvariable id="task" type="com.sda.task.model.Task"--%>
<%--Komentarz--%>
<!DOCTYPE html>
<html>
<c:set var="testowa" value="123456" scope="session"/>
<jsp:include page="common/head.jsp"/>

<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Lista zadań</h1>
            <h1>${task.name}</h1>

        </div>
    </div>
</div>


</body>
</html>