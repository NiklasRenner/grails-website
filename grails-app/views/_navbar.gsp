<nav id="main-nav" class="navbar navbar-default navbar-fixed-top navbar-custom">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-other">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link controller="application" class="active navbar-brand">Home</g:link>
        </div>

        <nav class="collapse navbar-collapse" id="navbar-other">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/contact">Contact</a></li>
                <li><a href="/about">About</a></li>
                <li><g:link controller="login" action="index">Login</g:link></li>
            </ul>
        </nav>
    </div>
</nav>