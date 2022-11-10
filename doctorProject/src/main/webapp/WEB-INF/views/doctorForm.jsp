<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 10.11.2022
  Time: 08:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>

<body class="bg-dark">

<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Dodaj doctora</div>
        <div class="card-body">
            <form:form method="post" modelAttribute="doctorDto">
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="name">Imię</label>
                        <input type="text" id="name" name="name" class="form-control" placeholder="First name"
                               required="required" autofocus="autofocus">
                    </div>
                    <form:errors path="name" cssStyle="color: red"/>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="lastname">Nazwisko</label>
                        <input type="text" id="lastname" name="lastname" class="form-control" placeholder="Last name"
                               required="required">
                    </div>
                    <form:errors path="lastname" cssStyle="color: red"/>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="phone">Telefon:</label>
                        <input type="number" id="phone" name="phone" class="form-control" placeholder="Phone"
                               required="required">
                    </div>
                    <form:errors path="phone" cssStyle="color: red"/>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="email">Email:</label>
                        <input type="text" id="email" name="email" class="form-control" placeholder="Email"
                               required="required">
                    </div>
                    <form:errors path="email" cssStyle="color: red"/>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="description">Opis:</label>
                        <input type="text" id="description" name="description" class="form-control" placeholder="Description"
                               required="required">
                    </div>
                    <form:errors path="description" cssStyle="color: red"/>
                </div>
                <div class="mb-3">
                    <label class="form-label">Lekarz: </label>
                    <select name="specialization" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <c:forEach  var="spec" items="${spects}">
                            <option value="${spec}">${spec}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Miasto: </label>
                    <select name="city" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <c:forEach var="cit" items="${cities}">
                            <option value="${cit}">${cit}</option>
                        </c:forEach>
                    </select>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Dodaj doctora"/>
                <div class="col-md-6">
                    <div class="form-label-group">
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>