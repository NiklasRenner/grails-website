<nav id="main-nav" class="navbar navbar-default navbar-fixed-top navbar-custom">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-other">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <g:link controller="application" action="index" class="navbar-brand">
                <g:message code="frontend.home"/>
            </g:link>
        </div>

        <div class="collapse navbar-collapse" id="navbar-other">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <g:message code="frontend.tools"/>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <g:link controller="scribbler" action="create">
                                <g:message code="frontend.scribbler"/>
                            </g:link>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#footer" class="close-on-click">
                        <g:message code="frontend.contact"/>
                    </a>
                </li>
                <sec:ifLoggedIn>
                    <li>
                        <g:link controller="stats" action="index">
                            <g:message code="frontend.stats"/>
                        </g:link>
                    </li>
                    <li>
                        <g:link url="/logout">
                            <g:message code="frontend.logout"/>
                        </g:link>
                    </li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li>
                        <g:link controller="login" action="index">
                            <g:message code="frontend.login"/>
                        </g:link>
                    </li>
                </sec:ifNotLoggedIn>
            </ul>
        </div>
    </div>
</nav>