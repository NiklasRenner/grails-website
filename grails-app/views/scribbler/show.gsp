<%@ page import="java.awt.SystemColor" %>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="frontend.scribbler"/></title>
</head>

<body>
    <section id="show">
        <div class="container">
            <div class="row control-group">
                <div class="col-lg-12">
                    <h1 class="page-header">${scribble.title}

                        <button class="btn btn-lg btn-success" data-clipboard-action="copy" data-clipboard-copy-link=""
                                data-clipboard-text="${link}">
                            <g:message code="frontend.copyLink"/>
                        </button>
                    </h1>

                    <pre class="lead">${new String(scribble.data)}</pre>
                </div>
            </div>
        </div>
    </section>
</body>
</html>