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
                    <h1 class="page-header">${scribble.title}</h1>

                    <pre class="lead">${new String(scribble.data)}</pre>
                </div>
            </div>
        </div>
    </section>

    %{--<section class="success" id="link">--}%
        %{--<div class="container">--}%
            %{--<div class="row">--}%
                %{--<div class="col-lg-12">--}%
                    %{--<h1 class="page-header sub-header">Links</h1>--}%

                    %{--<p class="lead">--}%
                        %{--<g:link mapping="scribblerShow" id="${scribble.id}">THIS</g:link>--}%
                    %{--</p>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</section>--}%

</body>
</html>