<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.scribbler"/></title>
</head>

<body>
    <section id="paster">
        <div class="container">
            <div class="row control-group">
                <div class="col-lg-12">
                    <g:form name="login-form" method="POST" controller="scribbler" action="post"
                            class="form-signin">
                        <h1 class="page-header"><g:message code="frontend.createScribble"/></h1>

                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label><g:message code="frontend.title"/></label>
                                <g:field type="text" name="title" class="form-control" required=""
                                         placeholder="${message(code: 'frontend.title')}"/>
                            </div>
                        </div>

                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Text</label>
                                <g:textArea name="text" class="form-control" rows="10" required=""
                                            placeholder="${message(code: 'frontend.scribblePlaceholder')}"/>
                            </div>
                        </div>

                        <div class="row control-group">
                            <div class="form-group col-xs-12">
                                <g:submitButton class="btn btn-success btn-lg" name="submit"
                                                value="${message(code: 'frontend.create')}"/>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </section>

    <section class="success">
        <div class="container">
            <div class="row">
                <h1 class="page-header sub-header"><g:message code="frontend.scribbles"/></h1>

                <p class="lead">
                    <g:message code="frontend.scribbles.about"/>
                </p>
            </div>
        </div>
    </section>

</body>
</html>