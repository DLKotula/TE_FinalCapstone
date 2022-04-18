<%@ include file="common/header.jspf" %>

<div class="bg-img">
    <div class="site-header">
        <h1>Welcome to Web Warriors Comics!</h1>
        <p>A place to catalogue your comic collections.</p>
    </div>
</div>

<div id="card-page">
    <div id="grid">
        <c:forEach var="collection" items="${publicCollections}">
            <div class="collection">
                <h3>${collection.collectionName}</h3>
                <c:url var="imageUrl" value="${collection.image}"/>
                <c:url var="collectionDetailUrl" value="/collection/detail">
                    <c:param name="id" value="${collection.collectionId}"/>
                </c:url>
                <a class="collection-image" href="${collectionDetailUrl}">
                   <img src="${imageUrl}"/>
                </a>
            </div>
        </c:forEach>
    </div>
</div>

<div id="footer">
    <%@ include file="common/footer.jspf" %>
</div>