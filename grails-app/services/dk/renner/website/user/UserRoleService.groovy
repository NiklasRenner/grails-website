package dk.renner.website.user

import grails.transaction.Transactional

@Transactional
class UserRoleService {

    RoleService roleService
    UserService userService

    User create(UserInput input) {
        def role = roleService.findByAuthority input.authority
        def user = input as User

        if (!role || !user.validate()) {
            println input.properties
            return
        }

        def saved = userService.save user
        saved && UserRole.create(saved, role)

        saved
    }

}
