<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="common/header.jspf" %>


<div class="container">
    <div style="align-content: center" class="content">
        <p>Membership: ${user.role.toUpperCase()}</p>
    </div>
</div>

<div class="bg-img2">
    <div class="site-header">
        <h1>You have entered your secret lair!</h1>
    </div>
    <div class="sidebar" style="horiz-align: right; right: 80px;top: 40px">

        <a class="active"> Watch Tower</a>

        <div class="private1">
            <%--        --%>
            <form action="${addComic}" method="POST" class="navbar-form">
                <c:url var="addComic" value="/addComic"/>
                <c:choose>
                    <c:when test="${user.role == 'Standard' && count >= 100}">

                        <button disabled class="btn-danger">MAXIMUM COMICS REACHED!! Register for a Premium
                            Membership!
                        </button>

                    </c:when>
                    <c:otherwise>
                        <c:url var="addComic" value="/addComic"/>
                        <button type="submit" formaction="${addComic}" class="btn btn-primary">Add Comic</button>
                    </c:otherwise>
                </c:choose>
            </form>

            <c:url var="createCollection" value="/collection"/>

            <form action="${createCollection}" method="POST" class="navbar-form">
                <button type="submit" class="btn btn-primary">Add Collection</button>
            </form>

        </div>

    </div>

</div>


<div id="card-page">
    <div id="grid">
        <c:forEach var="collection" items="${collections}">
            <div class="collection">
                <h3>${collection.collectionName}</h3>
                <c:url var="imageUrl" value="${collection.image}"/>
                <c:url var="collectionDetailUrl" value="/userCollectionDetail">
                    <c:param name="id" value="${collection.collectionId}"/>
                </c:url>
                <a class="collection-image" href="${collectionDetailUrl}">
                    <img src="${imageUrl}"/>
                </a>
                <p>Created by user</p>
            </div>
        </c:forEach>
    </div>
</div>

<br>
<div class="navbarPrivate">
    <label>Your comics</label>

</div>
<div id="card-page">
    <div id="grid">
        <c:forEach var="comic" items="${comics}">
            <div class="comics">
                <c:url var="imageUrl" value="${comic.image}"/>
                <img class="comic-image" src="${imageUrl}" width="150px" height="250px"/>
                <div class="comic-description">
                    <h4>${comic.comicName}</h4>
                        <div class="pubDate">
                            <P> Publish Date: ${comic.publishDate}</P>
                        </div>
                        <p class="too-long">${comic.description}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<div id="footer">
    <%@ include file="common/footer.jspf" %>
</div>
