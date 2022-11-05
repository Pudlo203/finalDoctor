<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ph
  Date: 02.11.2022
  Time: 09:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:include page="fragments/header.jsp"/>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

<div class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Zabiegi</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <select class="form-select" id="inputGroupSelect02">
                        <option selected>Choose...</option>
                        <option>
                            <c:forEach var="treatment" items="${treatments}">
                                <options value="${treatment}">${treatment}</options> <br>
                            </c:forEach>
                        </option>

<%--                        <option value="1">One</option>--%>
<%--                        <option value="2">Two</option>--%>
<%--                        <option value="3">Three</option>--%>
                    </select>
                    <label class="input-group-text" for="inputGroupSelect02">Options</label>
                </div>
            </div>
            <div class="modal-footer">

                <a href="/register" class="btn btn-warning rounded-0 text-light m-1">Rejestracja</a>
                <a href="/login" class="btn btn-warning rounded-0 text-light m-1">Zaloguj się</a>

                <a href="" class="btn btn-warning rounded-0 text-light m-1">Wróć do wyszukiwania</a>
<%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
<%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>

                <div class="dropdown-menu d-block position-static p-2 shadow rounded-3 w-340px">
                    <div class="d-grid gap-1">
                        <div class="cal">
                            <div class="cal-month">
                                <button class="btn cal-btn" type="button">
                                    <svg class="bi" width="16" height="16"><use xlink:href="#arrow-left-short"/></svg>
                                </button>
                                <strong class="cal-month-name">June</strong>
                                <select class="form-select cal-month-name d-none">
                                    <option value="January">January</option>
                                    <option value="February">February</option>
                                    <option value="March">March</option>
                                    <option value="April">April</option>
                                    <option value="May">May</option>
                                    <option selected value="June">June</option>
                                    <option value="July">July</option>
                                    <option value="August">August</option>
                                    <option value="September">September</option>
                                    <option value="October">October</option>
                                    <option value="November">November</option>
                                    <option value="December">December</option>
                                </select>
                                <button class="btn cal-btn" type="button">
                                    <svg class="bi" width="16" height="16"><use xlink:href="#arrow-right-short"/></svg>
                                </button>
                            </div>
                            <div class="cal-weekdays text-muted">
                                <div class="cal-weekday">Sun</div>
                                <div class="cal-weekday">Mon</div>
                                <div class="cal-weekday">Tue</div>
                                <div class="cal-weekday">Wed</div>
                                <div class="cal-weekday">Thu</div>
                                <div class="cal-weekday">Fri</div>
                                <div class="cal-weekday">Sat</div>
                            </div>
                            <div class="cal-days">
                                <button class="btn cal-btn" disabled type="button">30</button>
                                <button class="btn cal-btn" disabled type="button">31</button>

                                <button class="btn cal-btn" type="button">1</button>
                                <button class="btn cal-btn" type="button">2</button>
                                <button class="btn cal-btn" type="button">3</button>
                                <button class="btn cal-btn" type="button">4</button>
                                <button class="btn cal-btn" type="button">5</button>
                                <button class="btn cal-btn" type="button">6</button>
                                <button class="btn cal-btn" type="button">7</button>

                                <button class="btn cal-btn" type="button">8</button>
                                <button class="btn cal-btn" type="button">9</button>
                                <button class="btn cal-btn" type="button">10</button>
                                <button class="btn cal-btn" type="button">11</button>
                                <button class="btn cal-btn" type="button">12</button>
                                <button class="btn cal-btn" type="button">13</button>
                                <button class="btn cal-btn" type="button">14</button>

                                <button class="btn cal-btn" type="button">15</button>
                                <button class="btn cal-btn" type="button">16</button>
                                <button class="btn cal-btn" type="button">17</button>
                                <button class="btn cal-btn" type="button">18</button>
                                <button class="btn cal-btn" type="button">19</button>
                                <button class="btn cal-btn" type="button">20</button>
                                <button class="btn cal-btn" type="button">21</button>

                                <button class="btn cal-btn" type="button">22</button>
                                <button class="btn cal-btn" type="button">23</button>
                                <button class="btn cal-btn" type="button">24</button>
                                <button class="btn cal-btn" type="button">25</button>
                                <button class="btn cal-btn" type="button">26</button>
                                <button class="btn cal-btn" type="button">27</button>
                                <button class="btn cal-btn" type="button">28</button>

                                <button class="btn cal-btn" type="button">29</button>
                                <button class="btn cal-btn" type="button">30</button>
                                <button class="btn cal-btn" type="button">31</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<jsp:include page="fragments/footer.jsp"/>