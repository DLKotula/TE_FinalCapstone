<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="common/header.jspf" %>

<div id="collection-detail">
    <c:url var="imageUrl" value="${collection.image}"/>
    <img class="collection-image" src="${imageUrl}"/>

    <div class="collection-description">
        <h1>${collection.collectionName}</h1>


        <c:choose>
            <c:when test="${collection.isPrivate}">
                <p>PRIVATE</p>
            </c:when>
            <c:otherwise>
                <p>PUBLIC</p>
            </c:otherwise>
        </c:choose>

        <p>${collection.description}</p>

        <p>This collection contains ${count} comics.</p>


        <div class="bulkAdd">
            <c:url var="collectionAddComics" value="/collectionBulkAdd">
                <c:param name="id" value="${collection.collectionId}"/>
            </c:url>
            <form action="${collectionAddComics}" method="GET" class="navbar-form">
                <input type="hidden" value="${collection.collectionId}" name="collectionId">
                <button type="submit" class="btn btn-primary">Add Comics to your Collection</button>
            </form>
            <%--                /add button for editing--%>

<%--            <form action="${editCollection}" method="GET" class="navbar-form">--%>
<%--                <input type="hidden" value="${collection.collectionId}" name="collectionId">--%>
<%--                <c:url var="editCollection" value="/editCollection"/>--%>
<%--                <button type="submit" class="btn btn-primary">Edit Your collection</button>--%>
<%--            </form>--%>
            <div class="comiclater">
            <a href="${pageContext.request.contextPath}/headquarters" id="Cancel" class="btn btn-danger">Maybe
                Later</a></div>

        </div>

    </div>
</div>

<h3 class="collection-divide">COMICS IN COLLECTION</h3>
<div id="card-page">
    <div id="grid">
    <c:forEach var="comic" items="${comics}">
        <div class="comic">
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