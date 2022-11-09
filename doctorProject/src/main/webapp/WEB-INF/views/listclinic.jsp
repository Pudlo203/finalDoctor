<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 09.11.2022
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>


<table class="table">
    <thead>
    <tr>
        <th scope="col">Nazwa kliniki:</th>
        <th scope="col">Telefon:</th>
        <th scope="col">Email:</th>
        <th scope="col">Ulica:</th>
        <th scope="col">Numer ulicy:</th>
        <th scope="col">Numer mieszkania:</th>
    </tr>
    </thead>
    <tbody class="table-group-divider">
    <c:forEach var="clinic" items="${clinicList}">
        <tr>
            <th scope="row">${clinic.name}</th>
            <td>${clinic.phone}</td>
            <td>${clinic.email}</td>
            <td>${clinic.street}</td>
            <td>${clinic.streetNumber}</td>
            <td>${clinic.apartmentNumber}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/" class="btn btn-warning rounded-0 text-light m-1">Wróć do strony głównej </a>

<jsp:include page="fragments/footer.jsp"/>