package dk.renner.website

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

    @Secured('ROLE_ADMIN')
    def index() {
        [users: User.all]
    }

}
