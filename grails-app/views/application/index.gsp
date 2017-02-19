<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>NiklasRenner.dk</title>

    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="main.css"/>
</head>

<body>
    <g:render template="navbar"/>
    <g:render template="header"/>

    <div class="container" role="main">
        <div class="row">
            <h1 class="page-header">Welcome</h1>

            <p class="lead">This is the frontpage of the new website.</p>

            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>id</td>
                    <td>name</td>
                    <td>token</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Niklas</td>
                    <td>abc123</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>George</td>
                    <td>dfgsd124</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Henning</td>
                    <td>346543</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="row">
            <asset:image src="span.png" class="img-responsive"/>
        </div>

        <div class="row">
            <h1 class="page-header">Other info</h1>
            <p class="lead">Some other info goes here maybe?</p>
        </div>
    </div>

    <asset:javascript src="jquery.min.js"/>
    <asset:javascript src="bootstrap.min.js"/>
</body>
</html>