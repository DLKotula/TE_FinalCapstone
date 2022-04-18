<html lang="en">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>
<head>
    <c:url var="registerUrl" value="/register"/>
</head>
<body>

<header>
    <div class="bg-img">
        <div class="site-header">
            <h1>Register for a Membership to Web Warriors</h1>
            <h2>The Comic Book Collective</h2>
            <p>Please Choose a Membership Level</p>
        </div>
    </div>
</header>
<main>
    <section class="registration-options">

        <div class="option-boxes">

            <div class="standard">
                <div class="card-header">
                    <h3>Standard</h3>
                </div>
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            Create a personal collection with up to 100 Comics
                        </li>
                        <li>
                            Can browse users' collections
                        </li>
                        <li>
                            View Aggregate data about all collections
                        </li>
                    </ul>
                </div>

            </div>

            <div class="premium">
                <div class="card-header">
                    <h3>Premium</h3>
                </div>
                <div class="card-body">
                    <ul class="list-unstyled">
                        <li>
                            Create a personal collection with UNLIMITED Comics
                        </li>
                        <li>
                            Browse other users' collections
                        </li>
                        <li>
                            View Aggregate data about all collections
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="registration-form">
            <form:form action="${registerUrl}" method="POST" modelAttribute="user">
                <div class="registration-form-group">
                    <label for="username">Username</label>
                    <form:input class="form-control" path="username" placeholder="Superhero Name"/>
                    <form:errors path="username" cssClass="bg-danger"/>
                </div>
                <div class="registration-form-group">
                    <label for="password">Password</label>
                    <form:password class="form-control" path="password" placeholder="Secret Password"/>
                    <form:errors path="password" cssClass="bg-danger"/>
                </div>
                <div class="registration-form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <form:password class="form-control" path="confirmPassword" placeholder="Confirm Secret Password"/>
                    <form:errors path="passwordMatching" cssClass="bg-danger"/>
                </div>
                <fieldset>
                    <legend>Role</legend>
                    <form:errors path="role" cssClass="bg-danger"/>
                    <div class="radio">
                        <label>
                            <form:radiobutton path="role" value="Standard"/>
                            Standard
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <form:radiobutton path="role" value="Premium" checked="checked"/>
                            Premium
                        </label>
                    </div>
                </fieldset>
                <button type="submit" class="btn btn-default">Save User</button>
            </form:form>
        </div>

    </section>
</main>

</body>
</div>

<div id="footer">
    <%@ include file="common/footer.jspf" %>
</div>
</html>