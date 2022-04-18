<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>


<html>
<header>
<div class="bg-img">
<div class="site-header">
<h1>Add Comics to Your ${collection.collectionName} Collection!</h1>
</div>
</div>
</header>
<body>

<c:forEach var="comic" items="${comics}">
    <span class="comic-name">${comic.comicName}</span>
<form action="collectionBulkAdd" method="Post">
    <input type="hidden" name="comicId" value="${comic.comicId}">
    <input type="hidden" name="collectionId" value="${collection.collectionId}">
    <button type="submit" class="btn btn-primary">Add Comic to Collection!</button>
</form>
</c:forEach>


</body>
</html>


<div id="footer">
    <%@ include file="common/footer.jspf" %>
</div>