<head>
    <meta name="layout" content="main"/>
</head>

<body>
    <g:render template="/header"/>

    <section id="info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Welcome</h1>

                    <p class="lead">This is the frontpage of the new website.</p>

                    <button class="btn btn-default" onclick="window.location='/insert'">Insert</button>

                    <table class="table table-bordered">
                        <thead>

                        <tr>
                            <td>id</td>
                            <td>firstName</td>
                            <td>lastName</td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${users}" var="user">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </section>

    <div class="container-fluid">
        <div class="row">
            <asset:image src="span.png" class="img-responsive"/>
        </div>
    </div>

    <section id="other-info">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Other info</h1>

                    <p class="lead">Some other info goes here maybe?</p>
                </div>
            </div>
        </div>
    </section>

</body>
</html>