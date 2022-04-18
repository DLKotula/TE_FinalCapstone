<%@ include file="common/header.jspf" %>

<head>
    <c:url var="aboutUs" value="/about"/>

</head>
<body>

<header>
    <div class="bg-img">
        <div class="site-header">
            <h1>Want to learn more about us and our site?</h1>
            <h2>Below is our designers' origin stories as well as more information about our site statistics</h2>
        </div>
    </div>
</header>

<section class="about-us">
    <div class="option-boxes">
        <div class="designer">
            <div class="about-header">
                <h3>Dan's Daring Development</h3>
            </div>
            <div class="about-card">
                <div class="card-image">
                    <c:url var="danImageUrl" value="/images/GreenArrowCover.jpg"/>
                    <img src="${danImageUrl}"/>
                </div>
                <div class="card-body">
                    <ul class="list-unstyled">
                        <p>Dan was previously an average guy working for a bank in operations. Till one day he got
                            suspicious looking invitation
                            that would change his life forever.
                            He had been selected to take part in a top secret experiment to transfer people into Super
                            Coders! It was a 12 week long experiment
                            that turned him into one of the 4 Super Coders that created this website from Scratch!</p>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="designer">
        <div class="about-header">
            <h3>Jose's Joyful Journey</h3>
        </div>
        <div class="about-card">
            <div class="card-image">
                <c:url var="joseImageUrl" value="/images/NightWingCover.jpg"/>
                <img src="${joseImageUrl}"/>
            </div>
            <div class="card-body">
                <ul class="list-unstyled">
                    <p>Jose story starts like any other. abandoned as a child and was taken in at an orphanage.
                    later in life he found himself pulled towards anything having to do with code.
                        While walking down the street a flier smacked him in the face.
                        He looked at it and new it a sign, a CODING Super Hero BOOTCAMP.</p>
                </ul>
            </div>
        </div>
    </div>

    <div class="designer">
        <div class="about-header">
            <h3>Andy's Ascent to Awesomeness</h3>
        </div>
        <div class="about-card">
            <div class="card-image">
                <c:url var="andyImageUrl" value="/images/Hawkeye.jpg"/>
                <img src="${andyImageUrl}"/>
            </div>
            <div class="card-body">
                <ul class="list-unstyled">
                    <p>Andy was raised by a super coder, and initially rejected their call to
                        be a super coder as well. However, one day they received an offer they
                        couldn't refuse, and thus they dove into the life of super coding and found
                        they should never have refused the call to begin with!</p>

                </ul>
            </div>
        </div>
    </div>
    <div class="designer">
        <div class="about-header">
            <h3>Sarah's Supervillainous Start</h3>
        </div>
        <div class="about-card">
            <div class="card-image">
                <c:url var="sarahImageUrl" value="/images/DarthVader.jpg"/>
                <img src="${sarahImageUrl}"/>
            </div>
            <div class="card-body">
                <ul class="list-unstyled">
                    <p>Sarah grew up in a normal middle class home, however when her dad died, she realized that he was not
                        just a technical engineer at DelCorp, he had been working secretly as an engineer assisting the Superheroes
                        with their jobs as crime-fighters. Unfortunately, they were unable to stop his untimely end.
                        Sarah needed to avenge her father, and ensure the Superheroes would not rip any more
                        families apart in their quest for "good". She would need to learn more about technology,
                        and then insert herself into their corporation to stop them.</p>

                </ul>
            </div>
        </div>
    </div>

</section>
<br>

<div class="about">
    <div class="about-heading">
        <h3>View Aggregation Stats for our site!</h3>
        <h4>Of the ${count} comics on our site, here is a breakdown by:</h4>
    </div>
    <div id="card-page">
        <div id="stats-grid">
            <div class="stats-card">
                <h4 id="bold">Publisher(s)/Imprint(s):</h4>
                <ul>
                    <c:if test="${dcCount > 0}">
                        <li>${dcCount} comic(s) published by DC Comics</li>
                    </c:if>
                    <c:if test="${marvelCount > 0}">
                        <li>${marvelCount} comic(s) published by Marvel Comics</li>
                    </c:if>
                    <c:if test="${imageCount > 0}">
                        <li>${imageCount} comic(s) published by Image Comics</li>
                    </c:if>
                    <c:if test="${vertigoCount > 0}">
                        <li>${vertigoCount} comic(s) published by Vertigo Comics</li>
                    </c:if>
                    <c:if test="${darkHorseCount > 0}">
                        <li>${darkHorseCount} comic(s) published by Dark Horse Comics</li>
                    </c:if>
                    <c:if test="${idwCount > 0}">
                        <li>${idwCount} comic(s) published by IDW Comics</li>
                    </c:if>
                    <c:if test="${valiantCount > 0}">
                        <li>${valiantCount} comic(s) published by Valiant Comics</li>
                    </c:if>
                    <c:if test="${boomCount > 0}">
                        <li>${boomCount} comic(s) published by Boom! Studios Comics</li>
                    </c:if>
                    <c:if test="${dynamiteCount > 0}">
                        <li>${dynamiteCount} comic(s) published by Dynamite Entertainment Comics</li>
                    </c:if>
                    <c:if test="${archieCount > 0}">
                        <li>${archieCount} comic(s) published by Archie Comics</li>
                    </c:if>
                    <c:if test="${otherCount > 0}">
                        <li>${otherCount} comic(s) published by other publishers</li>
                    </c:if>
                </ul>
            </div>

            <div class="stats-card">
                <h4 id="bold">Primary Character(s)/Team(s):</h4>
                <ul>
                    <c:if test="${supermanCount > 0}">
                        <li>${supermanCount} comic(s) starring Superman</li>
                    </c:if>
                    <c:if test="${batmanCount > 0}">
                        <li>${batmanCount} comic(s) starring Batman</li>
                    </c:if>
                    <c:if test="${nightwingCount > 0}">
                        <li>${nightwingCount} comic(s) starring NightWing</li>
                    </c:if>
                    <c:if test="${flashCount > 0}">
                        <li>${flashCount} comic(s) starring the Flash</li>
                    </c:if>
                    <c:if test="${wonderWomanCount > 0}">
                        <li>${wonderWomanCount} comic(s) starring Wonder Woman</li>
                    </c:if>
                    <c:if test="${jlaCount > 0}">
                        <li>${jlaCount} comic(s) starring the Justice League</li>
                    </c:if>
                    <c:if test="${watchmenCount > 0}">
                        <li>${watchmenCount} comic(s) starring the Watchmen</li>
                    </c:if>
                    <c:if test="${tmntCount > 0}">
                        <li>${tmntCount} comic(s) starring the Teenage Mutant Ninja Turtles</li>
                    </c:if>
                    <c:if test="${sandmanCount > 0}">
                        <p>${sandmanCount} comic(s) in the Sandman series</p>
                    </c:if>
                    <c:if test="${avengersCount > 0}">
                        <li>${avengersCount} comic(s) starring the Avengers</li>
                    </c:if>
                    <c:if test="${xmenCount > 0}">
                        <li>${xmenCount} comic(s) starring the X-Men</li>
                    </c:if>
                    <c:if test="${spidermanCount > 0}">
                        <li>${spidermanCount} comic(s) starring Spider-man</li>
                    </c:if>
                    <c:if test="${wolverineCount > 0}">
                        <li>${wolverineCount} comic(s) starring Wolverine</li>
                    </c:if>
                    <c:if test="${deadpoolCount > 0}">
                        <li>${deadpoolCount} comic(s) starring Deadpool</li>
                    </c:if>
                    <c:if test="${fantasticFourCount > 0}">
                        <li>${fantasticFourCount} comic(s) starring the Fantastic Four</li>
                    </c:if>
                    <c:if test="${starWarsCount > 0}">
                        <li>${starWarsCount} comic(s) featuring Star Wars</li>
                    </c:if>
                    <c:if test="${vaderCount > 0}">
                        <li>${vaderCount} comic(s) starring Darth Vader</li>
                    </c:if>
                    <c:if test="${archieAndrewsCount > 0}">
                        <li>${archieAndrewsCount} comic(s) starring Archie</li>
                    </c:if>
                    <c:if test="${sagaCount > 0}">
                        <li>${sagaCount} comic(s) in the Saga Series</li>
                    </c:if>
                    <c:if test="${umbrellaAcademyCount > 0}">
                        <li>${umbrellaAcademyCount} comic(s) starring the Umbrella Academy</li>
                    </c:if>
                    <c:if test="${starTrekCount > 0}">
                        <li>${starTrekCount} comic(s) featuring Star Trek</li>
                    </c:if>
                </ul>
            </div>


            <div class="stats-card">
                <h4 id="bold">Genre(s):</h4>
                <ul>
                    <c:if test="${crimeCount > 0}">
                        <li>${crimeCount} Crime Genre</li>
                    </c:if>
                    <c:if test="${fantasyCount > 0}">
                        <li>${fantasyCount} Fantasy Genre</li>
                    </c:if>
                    <c:if test="${romanceCount > 0}">
                        <li>${romanceCount} Romance Genre</li>
                    </c:if>
                    <c:if test="${scifiCount > 0}">
                        <li>${scifiCount} Science Fiction Genre</li>
                    </c:if>
                    <c:if test="${horrorCount > 0}">
                        <li>${horrorCount} Horror Genre</li>
                    </c:if>
                    <c:if test="${actionCount > 0}">
                        <li>${actionCount} Action Genre</li>
                    </c:if>
                    <c:if test="${otherGenreCount > 0}">
                        <li>${otherGenreCount} Other Genres</li>
                    </c:if>
                </ul>
            </div>

        </div>
    </div>
</div>

<div class="about-ender">
    <p>This application was made with tons of love and we appreciate your patronage!</p>
</div>
<div id="footer">
<%@ include file="common/footer.jspf" %>
</div>