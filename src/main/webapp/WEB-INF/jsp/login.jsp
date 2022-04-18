<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="common/header.jspf" %>

<c:url var="loginUrl" value="/login"/>
<body>
<div class="bg-img">
    <div class="login">
        <form action="${loginUrl}" method="POST">
            <div class="form-group">
                <label for="username" path="username">Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Superhero Name"/>

            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password"  class="form-control" name="password" id="password" path="password" placeholder="Secret Password"/>

            </div>
            <button type="submit" class="btn btn-primary">BAM!</button>
        </form>
    </div>
</div>
</body>



