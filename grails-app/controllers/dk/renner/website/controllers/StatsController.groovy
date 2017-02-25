package dk.renner.website.controllers

import dk.renner.website.location.LocationService
import dk.renner.website.request.RequestInfoService
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Transactional
class StatsController {

    RequestInfoService requestInfoService
    LocationService locationService

    @Secured('ROLE_ADMIN')
    def index() {
        [requestCount: requestInfoService.countAll(), requestInfos: requestInfoService.findLastRequests()]
    }

    @Secured('ROLE_ADMIN')
    def show() {
        def info = requestInfoService.find(params.id as String)

        def geoLocation = locationService.findLocation info.clientIp

        [info: info, geoLocation: geoLocation]
    }

}
