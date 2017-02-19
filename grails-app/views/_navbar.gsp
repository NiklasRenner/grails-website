<nav id="main-nav" class="navbar navbar-default navbar-fixed-top navbar-custom">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-other">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <g:link controller="application" class="navbar-brand">
                <g:message code="frontend.home"/>
            </g:link>
        </div>

        <div class="collapse navbar-collapse" id="navbar-other">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#footer"><g:message code="frontend.contact"/></a></li>
                <li><a href="#other-info"><g:message code="frontend.about"/></a></li>
                <li><g:link controller="login" action="index"><g:message code="frontend.login"/></g:link></li>
            </ul>
        </div>
    </div>
</nav>