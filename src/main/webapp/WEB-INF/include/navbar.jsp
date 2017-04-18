<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/users" var="usersURL" > </c:url>
<c:url value="/create-user" var="createUserURL" > </c:url>
<c:url value="/logout" var="logoutUserURL" ></c:url>
<c:url value="/book-create" var="createBookURL" />
<c:url value="/books" var="booksURL" />
<c:url value="/rents" var="rentsURL" />

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <sec:authorize access="hasRole('ADMIN')">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Users <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${createUserURL}">New...</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${usersURL}">Show all</a></li>
                        </ul>
                    </li>
                </sec:authorize>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Books <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <sec:authorize access="hasRole('ADMIN')">
                            <li><a href="${createBookURL}">New...</a></li>
                        </sec:authorize>
                        <li role="separator" class="divider"></li>
                        <li><a href="${booksURL}">Show all</a></li>
                    </ul>
                </li>
                <li><a href="${rentsURL}">My rents</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <sec:authentication property="principal.username" />
                        <%-- principal.username   --%>
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">My account</a></li>
                        <li role="separator" class="divider"></li>
                        <li>
                            <a href="${logoutUserURL}">Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>