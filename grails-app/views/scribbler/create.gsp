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
            <div class="row control-group">
                <div class="col-lg-12">
                    <h1 class="page-header sub-header"><g:message code="frontend.scribbles"/></h1>

                    <p class="lead">
                        <g:message code="frontend.scribbles.about"/>
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section id="last-ten">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header sub-header"><g:message code="frontend.lastTen"/></h1>

                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <td><g:message code="frontend.id"/></td>
                            <td><g:message code="frontend.title"/></td>
                            <td><g:message code="frontend.timeOfCreation"/></td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${scribbles}" var="scribble">
                            <tr>
                                <td><g:link mapping="scribblerShow" id="${scribble.id}">${scribble.id}</g:link></td>
                                <td>${scribble.title}</td>
                                <td><g:formatDate date="${scribble.dateCreated}"/></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>

</body>
</html>