package dk.renner.website.controllers

import dk.renner.website.RequestInfo
import dk.renner.website.User
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class UserController {

    @Secured('ROLE_ADMIN')
    def index() {
        [users: User.all, requestCount: RequestInfo.count, requestInfos: RequestInfo.list(createSearchParams())]
    }

    private static Map createSearchParams() {
        Map params = [:]
        params.max = 10
        params.sort = 'requestTime'
        params.order = 'desc'

        params
    }

}
