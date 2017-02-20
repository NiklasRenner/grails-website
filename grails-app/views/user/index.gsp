<head>
    <meta name="layout" content="main"/>
    <title>Users</title>
</head>

<body>
    <section id="info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Users</h1>

                    <table class="table table-bordered">
                        <thead>

                        <tr>
                            <td>username</td>
                            <td>encrypted password</td>
                            <td>roles (comma-separated)</td>
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