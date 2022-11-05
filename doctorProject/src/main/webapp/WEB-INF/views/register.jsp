<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 04.11.2022
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="fragments/header.jsp"/>

<body class="bg-dark">

<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Zarejestruj się</div>
        <div class="card-body">
            <form:form method="post">
<%--                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

                <div class="form-group">
                    <div class="form-label-group">
                        <label for="firstName">Imię</label>
                        <input type="text" id="firstName" name="name" class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="lastName">Nazwisko</label>
                        <input type="text" id="lastName" name="name" class="form-control" placeholder="First name" required="required" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="inputUsername">username</label>
                        <input type="text" id="inputUsername" name="username" class="form-control" placeholder="username" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <label for="inputPassword">Hasło</label>
                                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Password" required="required">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <label for="confirmPassword">Powtórz hasło</label>
                                <input type="password" id="confirmPassword" name="confirm_password" class="form-control" placeholder="Confirm password" required="required">
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Zarejestruj się"/>
                <div class="col-md-6">
                    <div class="form-label-group">
                        <form:errors path="name" />
                        <form:errors path="username" />
                        <form:errors path="password" />
                        <form:errors path="confirm_password" />
                    </div>
                </div>
            </form:form>

            <div class="text-center">
                <a class="d-block small mt-3" href="/login">Zaloguj się</a>
<%--                <a class="d-block small" href="/forgot-password">Forgot Password?</a>--%>
            </div>
        </div>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>