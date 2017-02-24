<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.stats"/></title>
</head>

<body>
    <section id="stats">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><g:message code="frontend.requests"/></h1>

                    <p><g:message code="frontend.totalRequests"/>: ${requestCount}</p>

                    <table class="table table-hover">
                        <h1><g:message code="frontend.lastTen"/></h1>

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
                                <td><g:formatDate date="${requestInfo.dateCreated}"/></td>
                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</body>