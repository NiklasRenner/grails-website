package dk.renner.website

import dk.renner.website.user.Role
import dk.renner.website.user.User
import dk.renner.website.user.UserRole
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.TEST) {
            User.withTransaction {
                def roleAdmin = new Role(authority: 'ROLE_ADMIN').save flush: true, failOnError: true
                def userAdmin = new User(username: 'TestAdmin', password: 'TestAdmin').save flush: true, failOnError: true
                UserRole.create userAdmin, roleAdmin

                def roleUser = new Role(authority: 'ROLE_USER').save flush: true, failOnError: true
                def userUser = new User(username: 'TestUser', password: 'TestUser').save flush: true, failOnError: true
                UserRole.create userUser, roleUser
            }
        }
    }

    def destroy = {
    }

}
