<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.users"/></title>
</head>

<body>
    <section id="create-user">
        <div class="container">
            <div class="row control-group">
                <div class="col-lg-12">
                    <g:form name="user-form" method="POST" mapping="userPost" class="form-signin">
                        <h1 class="page-header"><g:message code="frontend.createUser"/></h1>

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

                        <div class="row control-group">
                            <div class="form-group col-xs-12">
                                <select title="role" name="authority">
                                    <g:each in="${roles}" var="role">
                                        <option value="${role.authority}">${role.pretty}</option>
                                    </g:each>
                                </select>
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

    <section class="success" id="users">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header sub-header"><g:message code="frontend.users"/></h1>

                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <td><g:message code="frontend.username"/></td>
                            <td><g:message code="frontend.roles"/></td>
                            <td><g:message code="frontend.dateCreated"/></td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${users}" var="user">
                            <tr>
                                <td>${user.username}</td>
                                <td>${user.authorities.collect { it.authority }.join(',')}</td>
                                <td><g:formatDate date="${user.dateCreated}"/></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</body>