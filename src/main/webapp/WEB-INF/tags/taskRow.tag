<%@ tag language="java" pageEncoding="UTF-8"%>

<%@attribute name="task" type="com.sda.task.model.Task" required="true"  %>
<%@attribute name="rowId" type="java.lang.Long" required="false" %>
<tr>
    <th scope="row">${rowId}</th>
    <th>${task.name}</th>
    <td>${task.description}</td>
    <td>${task.priority}</td>
    <td>${task.deadline}</td>
    <td>
        <a href="./task?id=${task.id}">
        <button class="btn btn-info">Details</button>
        </a>
    </td>
</tr>