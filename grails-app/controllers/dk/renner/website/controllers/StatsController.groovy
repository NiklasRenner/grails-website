package dk.renner.website.controllers

import dk.renner.website.request.RequestInfoService
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class StatsController {

    RequestInfoService requestInfoService

    @Secured('ROLE_ADMIN')
    def index() {
        [requestCount: requestInfoService.countAll(), requestInfos: requestInfoService.findLastRequests()]
    }

}
