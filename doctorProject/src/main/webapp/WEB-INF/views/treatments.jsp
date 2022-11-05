<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 02.11.2022
  Time: 09:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>

<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <div class="form-label-group">

                    </div>
                </div>
                <div class="form-group">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Wybierz zabieg</option>
                        <option>
                            <c:forEach var="treatment" items="${treatments}">
                                <options value="${treatment}">${treatment.name} , ${treatment.price}zł</options><br>
                            </c:forEach>
                        </option>
                    </select>
                </div>
<%--                <input type="submit" class="btn btn-primary btn-block" value="Login"/>--%>
                <a href="/register" class="btn btn-primary btn-block">Rejestracja</a>
                <a href="/login" class="btn btn-primary btn-block">Zaloguj się</a>
                <a href="/home" class="btn btn-primary btn-block">Wróć do wyszukiwania</a>
            </form>

        </div>


    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>