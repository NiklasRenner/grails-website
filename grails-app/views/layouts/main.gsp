<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><g:layoutTitle default="catnip.dk"/></title>

    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="font-awesome.css"/>
    <asset:stylesheet src="freelancer.css"/>
    <asset:stylesheet src="github-gist.css"/>
    <asset:stylesheet src="main.css"/>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet"
          type="text/css">

    <g:layoutHead/>
</head>

<body>
    <g:render template="/navbar"/>

    <g:layoutBody/>

    <g:render template="/footer"/>

    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="freelancer.js"/>
    <asset:javascript src="highlight.pack.js"/>
    <asset:javascript src="app.js"/>

</body>
</html>