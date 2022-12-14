<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 04.11.2022
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="fragments/header.jsp"/>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<body class="bg-dark">

<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">Zaloguj się</div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="inputUsername">Username</label>
                        <input type="text" name="username" id="inputUsername" class="form-control" placeholder="username" required="required" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="inputPassword">Hasło</label>
                        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                    </div>
                    <div class="col-md-6">
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Login"/>
                </div>
            </form>
            <a class="d-block small mt-3" href="/register">Rejestracja</a>
        </div>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>