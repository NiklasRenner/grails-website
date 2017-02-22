package dk.renner.website

import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.TEST) {
            User user = new User(username: 'Test', password: 'Test').save flush: true
            Role role = new Role(authority: 'ROLE_ADMIN').save flush: true

            UserRole.create user, role
        }
    }

    def destroy = {
    }

}
