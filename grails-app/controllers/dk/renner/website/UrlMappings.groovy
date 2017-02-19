package dk.renner.website

class UrlMappings {

    static mappings = {
        get "/"(controller: 'application', action: 'index')
        get "/insert"(controller: 'application', action: 'insert')
        get "/login"(controller: 'login', action: 'index')

        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
