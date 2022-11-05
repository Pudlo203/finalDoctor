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
        <div class="card-header">Login</div>
        <div class="card-body">
            <form method="post">
<%--                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="inputUsername">Username</label>
                        <input type="text" name="username" id="inputUsername" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <label for="inputPassword">Hasło</label>
                        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                    </div>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Login"/>
            </form>

        </div>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>