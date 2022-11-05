<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 31.10.2022
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Imię:</th>
        <th scope="col">Nazwisko:</th>
        <th scope="col">Przychodnie:</th>
        <th scope="col">Specjalizacja:</th>
        <th scope="col">Opis:</th>
        <th scope="col">Telefon:</th>
        <th scope="col">Email:</th>
    </tr>
    </thead>
    <tbody class="table-group-divider">
    <c:forEach var="doctor" items="${doctors}">
        <tr>
            <th scope="row">${doctor.name}</th>
            <td>${doctor.lastName}</td>
                <%--            <td>${doctor.clinics}</td>--%>
            <td>
                <c:forEach var="clinic" items="${doctor.clinics}">
                    ${clinic.name} <br>
                </c:forEach>

            </td>

            <td>${doctor.specialization}</td>
            <td>${doctor.description}</td>
            <td>${doctor.phone}</td>
            <td>${doctor.email}</td>
            <td>
<%--                <input type="submit" class="btn btn-primary" value="Umów">--%>
                <a href="/homeTreatments/${doctor.id}"
                   class="btn btn-info rounded-0 text-light m-1"
                   onclick="return confirm('Czy na pewno chcesz umówić wizytę?')">Umów</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="" class="btn btn-warning rounded-0 text-light m-1">Wróć</a>


<jsp:include page="fragments/footer.jsp"/>