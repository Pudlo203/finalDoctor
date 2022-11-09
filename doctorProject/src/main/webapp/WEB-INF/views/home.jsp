<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 31.10.2022
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<jsp:include page="fragments/header.jsp"/>


<div class="container px-4 py-5">
    <h1 class="fw-normal"> Znajdź lekarza i umów wizytę!</h1>
    <form method="post">
        <div class="mb-3">
            <label class="form-label">Lekarz: </label>
            <select name="spec" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                <c:forEach var="spec" items="${spects}">
                    <option value="${spec}">${spec}</option>
                </c:forEach>
            </select>
        </div>
        <div class="mb-3">
            <label class="form-label">Miasto: </label>
            <select name="cit" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                <c:forEach var="cit" items="${cities}">
                    <option value="${cit}">${cit}</option>
                </c:forEach>
            </select>
        </div>
        <input type="submit" class="btn btn-primary" value="Szukaj">
    </form>
</div>


<%--<form:form method="post" modelAttribute="doctors" commandName="doctors">--%>
<%--    <div class="mb-3">--%>
<%--        <label class="form-label">Lekarz: </label>--%>
<%--        <form:select path="spec" aria-label="Default select example">--%>
<%--            <form:options items="${specialization}"></form:options>--%>

<%--        </form:select>--%>
<%--    </div>--%>
<%--    <div class="mb-3">--%>
<%--        <label class="form-label">Miasto: </label>--%>
<%--        <form:select path="cit" aria-label="Default select example">--%>
<%--            <form:options items="${city}"></form:options>--%>
<%--        </form:select>--%>
<%--    </div>--%>
<%--    <form:button type="submit" class="btn btn-primary" value="Szukaj"></form:button>--%>
<%--</form:form>--%>


<jsp:include page="fragments/footer.jsp"/>
