<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 08.11.2022
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>


<div class="container px-4 py-5">

    <h1 class="fw-normal">Wyszukaj lekarzy w swoim mieście</h1>
    <form method="post">
        <select name="cit" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
            <c:forEach var="cit" items="${cities}">
                <option value="${cit}">${cit}</option>
            </c:forEach>
        </select>
        <input type="submit" class="btn btn-primary" value="Szukaj">
    </form>
    <a class="btn btn-warning rounded-0 text-light m-1" href="/" role="button">Wróć</a>
</div>
<jsp:include page="fragments/footer.jsp"/>
