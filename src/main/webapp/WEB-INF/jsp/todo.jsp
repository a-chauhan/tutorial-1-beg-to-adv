<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

<div class="container">
    <h2>Add Todo Page</h2>
    <form:form method="post" modelAttribute="todo">
        <form:hidden path="id"/>
        <fieldset class="form-group">
            <form:label path="desc" for="desc">Description</form:label>
            <form:input path="desc" id="desc" type="text" name="desc" class="form-control" required="required"/>
            <form:errors path="desc" cssClass="text-warning"/>
        </fieldset>

        <fieldset class="form-group">
            <form:label path="targetDate" for="targetDate">Target Date</form:label>
            <form:input path="targetDate" id="targetDate" type="text" name="targetDate" class="form-control" required="required"/>
            <form:errors path="targetDate" cssClass="text-warning"/>
        </fieldset>
        <button type="submit" class="btn btn-success">Add</button>
    </form:form>
</div>

<%@include file="common/footer.jspf" %>
