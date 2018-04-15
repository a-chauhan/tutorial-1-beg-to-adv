<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

    <div class="container">
        <h1>Todos-list</h1>
        <h2>Your name is: ${name}, and here is your todos</h2>
        <table class="table table-striped">
            <caption>Your todos</caption>
            <thead>
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Is it Done</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.desc}</td>
                    <td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
                    <td>${todo.done}</td>
                    <td><a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">Update</a></td>
                    <td><a type="button" class="btn btn-danger" href="/delete-todo?id=${todo.id}">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>

        </table>
        <h1>
            <a href="/add-todo">Add New Todo</a>
        </h1>
    </div>

<%@include file="common/footer.jspf" %>