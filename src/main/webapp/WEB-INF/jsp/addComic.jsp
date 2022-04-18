<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="common/header.jspf" %>

<header>
<div class="bg-img">
    <div class="site-header">
<h1>Add a Comic to Your Collection!</h1>
        <br/>
    </div>
</div>
</header>
<body>
<c:url var="addComicForm" value="/addComic"/>
<form:form method="Post" action="${addComicForm}" modelAttribute="comic" class="modal-content">
    <br/>
    <div class="form-group row">
        <label for="comicName" class="col-sm-3 col-form-label"><b>Comic Name:</b></label>
        <div class="col-sm-5">
            <form:input path="comicName" type="text" class="form-control" placeholder="Comic Name" name="comicName"
                        id="comicName"/>
<%--            <form:errors path="comicName" cssClass="bg-danger"/>--%>

        </div>
    </div>
    <div class="form-group row">

            <label for="imprint" class="col-sm-3 col-form-label"><b>Imprint/Publisher Name:</b></label>
        <div class="col-sm-5">
            <form:select path="imprint" class="form-control">
                <form:option value="NONE">------------------------------------- Select -------------------------------------</form:option>
                <form:option value="DC Comics/Detective Comics"/>
                <form:option value="Marvel Comics/Atlas Comics"/>
                <form:option value="Image" />
                <form:option value="Vertigo/DC Black Label"/>
                <form:option value="Dark Horse"/>
                <form:option value="IDW"/>
                <form:option value="Valiant"/>
                <form:option value="Boom! Studios"/>
                <form:option value="Dynamite Entertainment"/>
                <form:option value="Archie Comics"/>
                <form:option value="Other"/>
<%--                <form:errors path="imprint" cssClass="bg-danger"/>--%>
            </form:select>
        </div>
    </div>
        <div class="form-group row">
            <label for="genre" class="col-sm-3 col-form-label"><b>Genre:</b></label>
            <div class="col-sm-5">
            <form:select path="genre" class="form-control" id="genre">
                <form:option value="NONE">------------------------------------- Select -------------------------------------</form:option>
                <form:option value="Crime"/>
                <form:option value="Fantasy"/>
                <form:option value="Romance"/>
                <form:option value="Science Fiction"/>
                <form:option value="Horror"/>
<%--                <form:errors path="genre" cssClass="bg-danger"/>--%>
            </form:select>
        </div>
    </div>

    <div class="form-group row">

            <label for="dateObtained" class="col-sm-3 col-form-label"><b>Date Obtained: </b></label>
        <div class="col-sm-5">
            <form:input path="dateObtained" type="date" class="form-control" placeholder="Date Obtained"
                        name="dateObtained" id="dateObtained"/>
<%--            <form:errors path="dateObtained" cssClass="bg-danger"/>--%>
        </div>
    </div>
    <div class="form-group row">
            <label for="publishDate" class="col-sm-3 col-form-label"><b>Date Published: </b></label>
        <div class="col-sm-5">
            <form:input path="publishDate" type="date" class="form-control" placeholder="Date Published"
                        name="publishDate" id="publishDate"/>
<%--            <form:errors path="publishDate" cssClass="bg-danger"/>--%>
        </div>
    </div>


    <div class="form-group row">
        <label for="series" class="col-sm-3 col-form-label"><b>Primary Character(s)/Team(s):</b></label>
        <div class="col-sm-5">
            <form:input path="series" type="text" placeholder="Primary Character(s)/Team(s):" class="form-control" name="series" id="series"/>
<%--            <form:errors path="series" cssClass="bg-danger"/>--%>
        </div>
    </div>
    <div class="form-group row">
        <label for="comicSerialNumber" class="col-sm-3 col-form-label"><b>Comic Serial Number:</b></label>
        <div class="col-sm-5">
            <form:input path="comicSerialNumber" type="text" placeholder="Comic Serial Number" class="form-control" name="comicSerialNumber"
                        id="comicSerialNumber"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="storyArc" class="col-sm-3 col-form-label"><b>Story Arc:</b></label>
        <div class="col-sm-5">
            <form:textarea path="storyArc" rows="3" cols="50"  maxlength="200" placeholder="Story Arc" name="storyArc" id="storyArc" class="form-control"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="description" class="col-sm-3 col-form-label"><b>Description:</b></label>
        <div class="col-sm-5">
            <form:textarea path="description" rows="3" cols="50" placeholder="Brief Description (No Spoilers)"
                           name="description"
                           id="description"
                           class="form-control"/>
        </div>
    </div>

    <div class="form-group row">
        <label for="image" class="col-sm-3 col-form-label"><b>Cover Art:</b></label>
        <div class="col-sm-5">
            <form:input path="image" type="url" placeholder="Cover Art" name="image" id="image"/>
        </div>

    </div>
    <p>(Please include a URL for the image)</p>
    <br/>
    <div class="clearfix">
        <a href="${pageContext.request.contextPath}/headquarters" id="Cancel" class="btn btn-danger">Cancel</a>
        <button type="submit" class="btn btn-primary">Add Comic!</button>

    </div>
</form:form>


</body>
