<%@include file="template/header.jsp"%>
<%@include file="template/navbar.jsp"%>
<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Edit Empoyees</h3>
    </div>
    <form action="${urlEdit}" modelAttribute="employeesForm" method="post">
       <input type="hidden" name="idEmployees" value="${employee.idEmployees}">

        <div class="mb-3">
            <label for="departament" class="form-label">Departament</label>
            <input type="text"  class="form-control" name="departament" id="departament" value="${employee.departament}" required >
        </div>
        <div class="mb-3">
            <label for="firstName" class="form-label">FirstName</label>
            <input type="text" class="form-control" name="firstName" id="firstName" value="${employee.firstName}" >
        </div>
        <div class="mb-3">
            <label for="salary" class="form-label">Salary</label>
            <input type="number" step="any" class="form-control" name="salary" id="salary" value="${employee.salary}">
        </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary me-3">Submit</button>
                <a href="${urlInitialize}" class="btn btn-danger btn-sm">Back</a>
            </div>
    </form>
</div>
<%@include file="template/footer.jsp"%>