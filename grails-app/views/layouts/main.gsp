<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><g:layoutTitle default="NiklasRenner.dk"/></title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="freelancer.min.css"/>
    <asset:stylesheet src="main.css"/>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <g:layoutHead/>
</head>

<body>
    <g:render template="/navbar"/>
    <g:render template="/header"/>

    <g:layoutBody/>

    <asset:javascript src="bootstrap.min.js"/>
    <asset:javascript src="freelancer.min.js"/>
</body>
</html>