<!-- URL Dinamicos JSP -->
<c:set var="urlInitialize">
    <c:url value="${application.contextPath}/"/>
</c:set>
<c:set var="urlCreate">
    <c:url value="${application.contextPath}/create"/>
</c:set>


<div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="${urlInitialize}">System Employees</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${urlInitialize}">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${urlCreate}">Create</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>