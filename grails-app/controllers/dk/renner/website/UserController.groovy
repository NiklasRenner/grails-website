package dk.renner.website

import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

    @Secured('ROLE_ADMIN')
    def index() {
        render view: 'index', model: [users: User.all]
    }

}
