<%@ include file="common/header.jspf" %>

<div id="collection-detail">
    <c:url var="imageUrl" value="${collection.image}"/>
    <img class="collection-image" src="${imageUrl}"/>

    <div class="collection-description">
        <h1>${collection.collectionName}</h1>

        <h4>Created by ${username}</h4>

        <c:choose>
            <c:when test="${collection.isPrivate}">
                <p>PRIVATE</p>
            </c:when>
            <c:otherwise>
                <p>PUBLIC</p>
            </c:otherwise>
        </c:choose>

        <p>${collection.description}</p>


        <br/>
        <h4 id="bold">This collection contains ${count} comics:</h4>
        <h5 id="bold">Publisher(s)/Imprint(s):</h5>
        <c:if test="${dcCount > 0}">
            <p>${dcCount} comic(s) published by DC Comics</p>
        </c:if>
        <c:if test="${marvelCount > 0}">
            <p>${marvelCount} comic(s) published by Marvel Comics</p>
        </c:if>
        <c:if test="${imageCount > 0}">
            <p>${imageCount} comic(s) published by Image Comics</p>
        </c:if>
        <c:if test="${vertigoCount > 0}">
            <p>${vertigoCount} comic(s) published by Vertigo Comics</p>
        </c:if>
        <c:if test="${darkHorseCount > 0}">
            <p>${darkHorseCount} comic(s) published by Dark Horse Comics</p>
        </c:if>
        <c:if test="${idwCount > 0}">
            <p>${idwCount} comic(s) published by IDW Comics</p>
        </c:if>
        <c:if test="${valiantCount > 0}">
            <p>${valiantCount} comic(s) published by Valiant Comics</p>
        </c:if>
        <c:if test="${boomCount > 0}">
            <p>${boomCount} comic(s) published by Boom! Studios Comics</p>
        </c:if>
        <c:if test="${dynamiteCount > 0}">
            <p>${dynamiteCount} comic(s) published by Dynamite Entertainment Comics</p>
        </c:if>
        <c:if test="${archieCount > 0}">
            <p>${archieCount} comic(s) published by Archie Comics</p>
        </c:if>
        <c:if test="${otherCount > 0}">
            <p>${otherCount} comic(s) published by other publishers</p>
        </c:if>

        <h5 id="bold">Primary Character(s)/Team(s):</h5>
        <c:if test="${supermanCount > 0}">
            <p>${supermanCount} comic(s) starring Superman</p>
        </c:if>
        <c:if test="${batmanCount > 0}">
            <p>${batmanCount} comic(s) starring Batman</p>
        </c:if>
        <c:if test="${nightwingCount > 0}">
            <p>${nightwingCount} comic(s) starring NightWing</p>
        </c:if>
        <c:if test="${flashCount > 0}">
            <p>${flashCount} comic(s) starring the Flash</p>
        </c:if>
        <c:if test="${wonderWomanCount > 0}">
            <p>${wonderWomanCount} comic(s) starring Wonder Woman</p>
        </c:if>
        <c:if test="${greenArrowCount > 0}">
            <p>${greenArrowCount} comic(s) featuring Star Trek</p>
        </c:if>
        <c:if test="${jlaCount > 0}">
            <p>${jlaCount} comic(s) starring the Justice League</p>
        </c:if>
        <c:if test="${watchmenCount > 0}">
            <p>${watchmenCount} comic(s) starring the Watchmen</p>
        </c:if>
        <c:if test="${tmntCount > 0}">
            <p>${tmntCount} comic(s) starring the Teenage Mutant Ninja Turtles</p>
        </c:if>
        <c:if test="${sandmanCount > 0}">
            <p>${sandmanCount} comic(s) in the Sandman series</p>
        </c:if>
        <c:if test="${avengersCount > 0}">
            <p>${avengersCount} comic(s) starring the Avengers</p>
        </c:if>
        <c:if test="${xmenCount > 0}">
            <p>${xmenCount} comic(s) starring the X-Men</p>
        </c:if>
        <c:if test="${spidermanCount > 0}">
            <p>${spidermanCount} comic(s) starring Spider-man</p>
        </c:if>
        <c:if test="${wolverineCount > 0}">
            <p>${wolverineCount} comic(s) starring Wolverine</p>
        </c:if>
        <c:if test="${deadpoolCount > 0}">
            <p>${deadpoolCount} comic(s) starring Deadpool</p>
        </c:if>
        <c:if test="${fantasticFourCount > 0}">
            <p>${fantasticFourCount} comic(s) starring the Fantastic Four</p>
        </c:if>
        <c:if test="${hawkeyeCount > 0}">
            <p>${hawkeyeCount} comic(s) featuring Star Trek</p>
        </c:if>
        <c:if test="${thorCount > 0}">
            <p>${thorCount} comic(s) featuring Star Trek</p>
        </c:if>
        <c:if test="${starWarsCount > 0}">
            <p>${starWarsCount} comic(s) featuring Star Wars</p>
        </c:if>
        <c:if test="${vaderCount > 0}">
            <p>${vaderCount} comic(s) starring Darth Vader</p>
        </c:if>
        <c:if test="${archieAndrewsCount > 0}">
            <p>${archieAndrewsCount} comic(s) starring Archie</p>
        </c:if>
        <c:if test="${sagaCount > 0}">
            <p>${sagaCount} comic(s) in the Saga Series</p>
        </c:if>
        <c:if test="${umbrellaAcademyCount > 0}">
            <p>${umbrellaAcademyCount} comic(s) starring the Umbrella Academy</p>
        </c:if>
        <c:if test="${starTrekCount > 0}">
            <p>${starTrekCount} comic(s) featuring Star Trek</p>
        </c:if>

        <h5 id="bold">Genre(s):</h5>
        <c:if test="${crimeCount > 0}">
            <p>${crimeCount} crime genre comics</p>
        </c:if>
        <c:if test="${fantasyCount > 0}">
            <p>${fantasyCount} fantasy genre comic(s)</p>
        </c:if>
        <c:if test="${romanceCount > 0}">
            <p>${romanceCount} romance genre comic(s)</p>
        </c:if>
        <c:if test="${scifiCount > 0}">
            <p>${scifiCount} science fiction genre comic(s)</p>
        </c:if>
        <c:if test="${horrorCount > 0}">
            <p>${horrorCount} horror genre comic(s)</p>
        </c:if>
        <c:if test="${actionCount > 0}">
            <p>${actionCount} action genre comic(s)</p>
        </c:if>
        <c:if test="${otherGenreCount > 0}">
            <p>${otherGenreCount} comics in other genre(s)</p>
        </c:if>

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
                    <h4 class="comic-name">${comic.comicName}</h4>
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