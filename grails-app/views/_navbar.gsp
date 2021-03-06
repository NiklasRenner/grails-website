<%@ page import="grails.util.Environment" %>
<nav id="main-nav" class="navbar navbar-default navbar-fixed-top navbar-custom">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-other">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>
            <g:link mapping="index" class="navbar-brand">
                <g:message code="frontend.home"/>
                <g:if test="${Environment.current.name in ['test', 'development']}">
                    <p style="color: red;">Env -> ${Environment.current}</p>
                </g:if>
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
                            <g:link mapping="scribblerCreate">
                                <g:message code="frontend.scribbler"/>
                            </g:link>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#contact" class="close-on-click">
                        <g:message code="frontend.contact"/>
                    </a>
                </li>
                <sec:ifLoggedIn>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <g:message code="frontend.administration"/>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <g:link mapping="statsIndex">
                                        <g:message code="frontend.stats"/>
                                    </g:link>
                                </li>
                                <li>
                                    <g:link mapping="userIndex">
                                        <g:message code="frontend.users"/>
                                    </g:link>
                                </li>
                            </ul>
                        </li>
                    </sec:ifAllGranted>
                    <li>
                        <g:link url="/logout">
                            <g:message code="frontend.logout"/>
                        </g:link>
                    </li>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <li>
                        <g:link mapping="login">
                            <g:message code="frontend.login"/>
                        </g:link>
                    </li>
                </sec:ifNotLoggedIn>
            </ul>
        </div>
    </div>
</nav>