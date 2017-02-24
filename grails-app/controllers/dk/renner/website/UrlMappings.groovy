package dk.renner.website

class UrlMappings {

    static mappings = {
        //open to all
        name index: "/" {
            controller = 'application'
            action = 'index'
            method = 'GET'
        }

        //scribbler
        name scribblerCreate: "/scribbler" {
            controller = 'scribbler'
            action = 'create'
            method = 'GET'
        }

        name scribblerShow: "/scribbler/$id" {
            controller = 'scribbler'
            action = 'show'
            method = 'GET'
        }

        name scribblerPost: "/scribbler/post" {
            controller = 'scribbler'
            action = 'post'
            method = 'POST'
        }

        //locked to admin
        name statsIndex: "/stats" {
            controller = 'stats'
            action = 'index'
            method = 'GET'
        }

        //auth
        name login: "/login" {
            controller = 'login'
            action = 'index'
        }

        "500"(view: '/error')
        "404"(view: '/notFound')
    }
}
