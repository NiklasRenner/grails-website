<head>
    <meta name="layout" content="main"/>
    <title>Users</title>
</head>

<body>
    <section id="info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><g:message code="frontend.users"/></h1>

                    <table class="table table-striped">
                        <thead>

                        <tr>
                            <td><g:message code="frontend.username"/></td>
                            <td><g:message code="frontend.encryptedPassword"/></td>
                            <td><g:message code="frontend.roles"/></td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${users}" var="user">
                            <tr>
                                <td>${user.username}</td>
                                <td>${user.password}</td>
                                <td>${user.authorities.collect { it.authority }.join(',')}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </section>
</body>