package dk.renner.website

class UrlMappings {

    static mappings = {
        get "/"(controller: 'application', action: 'index', view: 'index')
        get "/login"(controller: 'login', action: 'index', view: 'index')

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
