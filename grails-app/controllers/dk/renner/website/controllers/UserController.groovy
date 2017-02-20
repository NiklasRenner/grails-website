package dk.renner.website.controllers

import dk.renner.website.RequestInfoService
import dk.renner.website.UserService
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

    RequestInfoService requestInfoService
    UserService userService

    @Secured('ROLE_ADMIN')
    def index() {
        [users: userService.findAll(), requestCount: requestInfoService.countAll(), requestInfos: requestInfoService.findLastRequests()]
    }

}
