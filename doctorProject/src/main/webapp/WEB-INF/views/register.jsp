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
            <form:form method="post" modelAttribute="registerDto">
                <%--                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>

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
                        <label for="username">username</label>
                        <input type="text" id="username" name="username" class="form-control" placeholder="username"
                               required="required">
                    </div>
                    <form:errors path="username" cssStyle="color: red"/>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <label for="password">Hasło</label>
                                <input type="password" id="password" name="password" class="form-control"
                                       placeholder="Password" required="required">
                            </div>
                            <form:errors path="password" cssStyle="color: red"/>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <label for="confirmPassword">Powtórz hasło</label>
                                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control"
                                       placeholder="Confirm password" required="required">
                            </div>
                            <form:errors path="confirmPassword" cssStyle="color: red"/>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Zarejestruj się"/>
                <%--                <a href="/login" class="btn btn-primary btn-block" value="Zarejestruj się"/>--%>
                <div class="col-md-6">
                    <div class="form-label-group">
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