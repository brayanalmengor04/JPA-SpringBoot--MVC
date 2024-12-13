<%@include file="template/header.jsp"%>
<%@include file="template/navbar.jsp"%>
<div class="container mt-4">
    <div class="text-center">
        <h3>Employee Management System</h3>
        <p class="text-muted">Effortlessly manage employee data in one place</p>
    </div>
    <div class="table-container mt-4">
        <table class="table table-striped table-hover table-bordered align-middle">
            <thead>
            <tr>
                <th scope="col">#ID</th>
                <th scope="col">Department</th>
                <th scope="col">First Name</th>
                <th scope="col">Salary</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employe" items="${employees}">
                <tr>
                    <th scope="row" class="text-center">${employe.idEmployees}</th>
                    <td>${employe.departament}</td>
                    <td>${employe.firstName}</td>
                    <fmt:setLocale value="en_US" />
                    <td class="text-end">
                        <fmt:formatNumber type="currency" value="${employe.salary}" />
                    </td>
                    <td class="text-center">
                        <c:set var="urlEdit">
                            <c:url value="${application.contextPath}/edit">
                                <c:param name="idEmployees" value="${employe.idEmployees}"/>
                            </c:url>
                        </c:set>
                        <c:set var="urlDelete">
                            <c:url value="${application.contextPath}/delete">
                                <c:param name="idEmployees" value="${employe.idEmployees}"/>
                            </c:url>
                        </c:set>

                        <a href="${urlEdit}" class="btn btn-warning btn-sm me-3">Edit</a>
                        <a href="${urlDelete}" class="btn btn-danger btn-sm">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@include file="template/footer.jsp"%>