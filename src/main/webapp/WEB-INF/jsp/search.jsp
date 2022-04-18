<%@ include file="common/header.jspf" %>

<div class="search-bg-img">
    <div class="site-header">
        <h1>Search for a Collection</h1>
    </div>
</div>

<form id="search-form" method="GET" class="form-inline">
    <input name="search" type="text" placeholder="Search Collections" class="form-control"/>
    <input name="submit" value="Search" type="submit" class="btn btn-default"/>
</form>
<table class="table">
    <tr>
        <th>Collection Name</th>
        <th>Description</th>
    </tr>
    <c:forEach var="collection" items="${collections}">
        <tr>
            <td><c:url var="collectionDetailUrl" value="/collection/detail">
                <c:param name="id" value="${collection.collectionId}"/>
            </c:url>
                <a href="${collectionDetailUrl}">
                        ${collection.collectionName}
                </a></td>
            <td>${collection.description}</td>

        </tr>
    </c:forEach>
</table>

<div id="footer">
    <%@ include file="common/footer.jspf" %>
</div>