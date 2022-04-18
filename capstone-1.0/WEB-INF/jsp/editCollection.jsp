<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="common/header.jspf" %>


<header>
    <div class="bg-img">
        <div class="site-header">
            <h2>Made a mistake?</h2>
            <h1>Update Your Collection Here!</h1>
            <br/>
        </div>
    </div>
</header>
<body>


<c:url var="amendCollectionForm" value="/editCollection"/>
<form:form method="Post" action="${amendCollectionForm}" class="modal-content" modelAttribute="collection">
    <input type="hidden" name="collectionId" value="${collection.collectionId}">
    <br/>
    <div class="form-group row">
        <label for="collectionName" class="col-sm-3 col-form-label"><b>Collection Name:</b></label>
        <div class="col-sm-5">
            <form:input path="collectionName" type="text" class="form-control" placeholder="Collection Name"
                        name="collectionName"
                        id="collectionName"/>
        </div>
    </div>

    <div class="form-group row">
        <label for="description" class="col-sm-3 col-form-label"><b>Description:</b></label>
        <div class="col-sm-5">
            <form:textarea path="description" rows="3" cols="50" placeholder="Brief Description of Your Collection"
                           name="description"
                           id="description"
                           class="form-control"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="image" class="col-sm-3 col-form-label"><b>Cover Art:</b></label>
        <div class="col-sm-5">
            <form:input path="image" type="url" class="form-control" placeholder="Cover Art" name="image" id="image"/>
        </div>
    </div>
    <br/>
    <br/>
    <div class="form-group row">
        <div class="col-sm-10 offset-sm-2">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck1">
                <label class="form-check-label" for="gridCheck1">
                    Private Collection
                </label>
                <br/>
                <p>(Leave Unchecked for a Public Collection)</p>
            </div>
        </div>
    </div>

    <div class="clearfix">
        <a href="${pageContext.request.contextPath}/headquarters" id="Cancel" class="btn btn-danger">Cancel</a>
        <button type="submit" class="btn btn-primary">Create Collection</button>
    </div>
</form:form>


</body>

