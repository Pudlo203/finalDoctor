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
                        <c:forEach var="treatment" items="${treatments}">
                            <option value="${treatment}">${treatment.name} , ${treatment.price}zł</option>
                            <br>
                        </c:forEach>
                    </select>
                </div>
                <div>
                    <label>Dzień:</label>
                    <select class="form-select" aria-label="Default select example">
                        <option value="day">1</option>
                        <option value="day">2</option>
                        <option value="day">3</option>
                        <option value="day">4</option>
                        <option value="day">5</option>
                        <option value="day">6</option>
                        <option value="day">7</option>
                        <option value="day">8</option>
                        <option value="day">9</option>
                        <option value="day">10</option>
                        <option value="day">11</option>
                        <option value="day">12</option>
                        <option value="day">13</option>
                        <option value="day">14</option>
                        <option value="day">15</option>
                        <option value="day">16</option>
                        <option value="day">17</option>
                        <option value="day">18</option>
                        <option value="day">19</option>
                        <option value="day">20</option>
                        <option value="day">21</option>
                        <option value="day">22</option>
                        <option value="day">23</option>
                        <option value="day">24</option>
                        <option value="day">25</option>
                        <option value="day">26</option>
                        <option value="day">27</option>
                        <option value="day">28</option>
                        <option value="day">29</option>
                        <option value="day">30</option>
                        <option value="day">31</option>
                    </select>
                </div>
                <div>
                    <label>Miesiąc: </label>
                    <select class="form-select" aria-label="Default select example">
                        <option value="month">Styczeń</option>
                        <option value="month">Luty</option>
                        <option value="month">Marzec</option>
                        <option value="month">Kwiecień</option>
                        <option value="month">Maj</option>
                        <option value="month">Czerwiec</option>
                        <option value="month">Lipiec</option>
                        <option value="month">Sierpień</option>
                        <option value="month">Wrzesień</option>
                        <option value="month">Październik</option>
                        <option value="month">Listopad</option>
                        <option value="month">Grudzień</option>
                    </select>
                </div>
                <div>
                    <label>Godzina: </label>
                    <select class="form-select" aria-label="Default select example">
                        <option value="hour">9:00</option>
                        <option value="hour">10:00</option>
                        <option value="hour">11:00</option>
                        <option value="hour">12:00</option>
                        <option value="hour">13:00</option>
                        <option value="hour">14:00</option>
                        <option value="hour">15:00</option>
                        <option value="hour">16:00</option>
                        <option value="hour">17:00</option>
                    </select>
                </div>
                <a href="/register" class="btn btn-primary btn-block">Rejestracja</a>
                <a href="/login" class="btn btn-primary btn-block">Zaloguj się</a>
                <a href="/" class="btn btn-primary btn-block">Wróć do wyszukiwania</a>
            </form>
        </div>

    </div>
</div>


<%--<div class="container">--%>
<%--    <div class="card card-login mx-auto mt-5">--%>
<%--        <div class="card-header">Wybierz zabieg i datę</div>--%>
<%--        <div class="card-body">--%>
<%--            <form:form method="post"  modelAttribute="history">--%>
<%--                <div class="form-group">--%>
<%--                    <div class="form-label-group">--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label> Zabieg: </label>--%>
<%--                        <form:select  path="name" class="form-select" aria-label="Default select example">--%>
<%--                            <c:forEach var="treatment" items="${treatments}">--%>
<%--                                <option  value="${treatment}">${treatment.name} , ${treatment.price}zł</option>--%>
<%--                                <br>--%>
<%--                            </c:forEach>--%>
<%--                        </form:select>--%>
<%--                        <label>Dzień:</label>--%>
<%--                        <form:select class="form-select" aria-label="Default select example" path="day">--%>
<%--                            <option value="day">1</option>--%>
<%--                            <option value="day">2</option>--%>
<%--                            <option value="day">3</option>--%>
<%--                            <option value="day">4</option>--%>
<%--                            <option value="day">5</option>--%>
<%--                            <option value="day">6</option>--%>
<%--                            <option value="day">7</option>--%>
<%--                            <option value="day">8</option>--%>
<%--                            <option value="day">9</option>--%>
<%--                            <option value="day">10</option>--%>
<%--                            <option value="day">11</option>--%>
<%--                            <option value="day">12</option>--%>
<%--                            <option value="day">13</option>--%>
<%--                            <option value="day">14</option>--%>
<%--                            <option value="day">15</option>--%>
<%--                            <option value="day">16</option>--%>
<%--                            <option value="day">17</option>--%>
<%--                            <option value="day">18</option>--%>
<%--                            <option value="day">19</option>--%>
<%--                            <option value="day">20</option>--%>
<%--                            <option value="day">21</option>--%>
<%--                            <option value="day">22</option>--%>
<%--                            <option value="day">23</option>--%>
<%--                            <option value="day">24</option>--%>
<%--                            <option value="day">25</option>--%>
<%--                            <option value="day">26</option>--%>
<%--                            <option value="day">27</option>--%>
<%--                            <option value="day">28</option>--%>
<%--                            <option value="day">29</option>--%>
<%--                            <option value="day">30</option>--%>
<%--                            <option value="day">31</option>--%>
<%--                        </form:select>--%>
<%--                        <label>Miesiąc: </label>--%>
<%--                        <form:select class="form-select" aria-label="Default select example" path="month">--%>
<%--                            <option value="month">Styczeń</option>--%>
<%--                            <option value="month">Luty</option>--%>
<%--                            <option value="month">Marzec</option>--%>
<%--                            <option value="month">Kwiecień</option>--%>
<%--                            <option value="month">Maj</option>--%>
<%--                            <option value="month">Czerwiec</option>--%>
<%--                            <option value="month">Lipiec</option>--%>
<%--                            <option value="month">Sierpień</option>--%>
<%--                            <option value="month">Wrzesień</option>--%>
<%--                            <option value="month">Październik</option>--%>
<%--                            <option value="month">Listopad</option>--%>
<%--                            <option value="month">Grudzień</option>--%>
<%--                        </form:select>--%>
<%--                        <label>Godzina: </label>--%>
<%--                        <form:select class="form-select" aria-label="Default select example" path="hour">--%>
<%--                            <option value="hour">9:00</option>--%>
<%--                            <option value="hour">10:00</option>--%>
<%--                            <option value="hour">11:00</option>--%>
<%--                            <option value="hour">12:00</option>--%>
<%--                            <option value="hour">13:00</option>--%>
<%--                            <option value="hour">14:00</option>--%>
<%--                            <option value="hour">15:00</option>--%>
<%--                            <option value="hour">16:00</option>--%>
<%--                            <option value="hour">17:00</option>--%>
<%--                        </form:select>--%>
<%--                    </div>--%>
<%--                <input type="submit" value="Zapisz">--%>
<%--&lt;%&ndash;                    <a href="/register?name=${treatment.name}" class="btn btn-primary btn-block" type="submit">Rejestracja</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="/login" class="btn btn-primary btn-block" type="submit">Zaloguj się</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="/" class="btn btn-primary btn-block">Wróć do wyszukiwania</a>&ndash;%&gt;--%>
<%--            </form:form>--%>

<%--        </div>--%>


<%--    </div>--%>
<%--</div>--%>

<jsp:include page="fragments/footer.jsp"/>