<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.login"/></title>
</head>

<body>
    <section id="login">
        <div class="container">
            <div class="row control-group">
                <div class="col-lg-12">
                    <sec:ifLoggedIn>
                        <h1 class="page-header">Logged in</h1>

                        <p><g:message code="frontend.username"/>: <sec:username/></p>
                    </sec:ifLoggedIn>

                    <sec:ifNotLoggedIn>
                        <g:form name="login-form" method="POST" url="/login/authenticate" class="form-signin">
                            <h1 class="page-header"><g:message code="frontend.login"/></h1>

                            <div class="row control-group">
                                <div class="form-group col-xs-12 floating-label-form-group controls">
                                    <label><g:message code="frontend.username"/></label>
                                    <g:field type="text" name="username" class="form-control" required=""
                                             placeholder="${message(code: 'frontend.username')}"/>
                                </div>
                            </div>

                            <div class="row control-group">
                                <div class="form-group col-xs-12 floating-label-form-group controls">
                                    <label><g:message code="frontend.password"/></label>
                                    <g:field type="password" name="password" class="form-control" required=""
                                             placeholder="${message(code: 'frontend.password')}"/>
                                </div>
                            </div>

                            <g:if test="${params.error}">
                                <label class="text-danger"><g:message code="frontend.failedLogin"/></label>
                            </g:if>

                            <div class="checkbox">
                                <label>
                                    <g:checkBox name="remember-me"/> <g:message code="frontend.rememberMe"/>
                                </label>
                            </div>

                            <div class="row control-group">
                                <div class="form-group col-xs-12">
                                    <g:submitButton class="btn btn-success btn-lg" name="submit"
                                                    value="${message(code: 'frontend.login')}"/>
                                </div>
                            </div>
                        </g:form>
                    </sec:ifNotLoggedIn>
                </div>
            </div>
        </div>
    </section>

</body>
</html>