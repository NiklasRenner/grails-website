package dk.renner.website

class UrlMappings {

    static mappings = {
        //open to all
        get "/"(controller: 'application', action: 'index')

        //locked to admin
        get "/user"(controller: 'user', action: 'index')

        //auth
        get "/login"(controller: 'login', action: 'index')

        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
