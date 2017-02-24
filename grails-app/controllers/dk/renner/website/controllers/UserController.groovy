package dk.renner.website.controllers

import dk.renner.website.user.RoleService
import dk.renner.website.user.UserInput
import dk.renner.website.user.UserRoleService
import dk.renner.website.user.UserService
import grails.plugin.springsecurity.annotation.Secured

class UserController {

    RoleService roleService
    UserService userService
    UserRoleService userRoleService

    @Secured('ROLE_ADMIN')
    def index() {
        [users: userService.findAll(), roles: roleService.findAll()]
    }

    @Secured('ROLE_ADMIN')
    def post(UserInput input) {
        def user = userRoleService.create input

        if (!user) {
            return redirect(mapping: '/500')
        }

        log.error user.toString()

        redirect mapping: 'userIndex'
    }

}
