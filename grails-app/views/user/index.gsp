<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.users"/></title>
</head>

<body>
    <section id="users">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><g:message code="frontend.users"/></h1>

                    <table class="table table-hover">
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

    <section class="success" id="stats">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header sub-header"><g:message code="frontend.requests"/></h1>

                    <p><g:message code="frontend.totalRequests"/>: ${requestCount}</p>

                    <table class="table table-hover">
                        <h3><g:message code="frontend.lastTen"/></h3>

                        <thead>
                        <tr>
                            <td><g:message code="frontend.clientIp"/></td>
                            <td><g:message code="frontend.requestUri"/></td>
                            <td><g:message code="frontend.requestTime"/></td>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${requestInfos}" var="requestInfo">
                            <tr>
                                <td>${requestInfo.clientIp}</td>
                                <td>${requestInfo.requestUri}</td>
                                <td><g:formatDate date="${requestInfo.requestTime}"/></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</body>