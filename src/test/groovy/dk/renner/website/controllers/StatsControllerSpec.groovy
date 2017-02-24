package dk.renner.website.controllers

import dk.renner.website.request.RequestInfo
import dk.renner.website.request.RequestInfoService
import dk.renner.website.user.User
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock([RequestInfo, User])
@TestFor(StatsController)
class StatsControllerSpec extends Specification {

    def setup() {
        controller.requestInfoService = Mock(RequestInfoService)
    }

    def "test"() {
        when:
            controller.index()

        then:
            1 * controller.requestInfoService.countAll()
            1 * controller.requestInfoService.findLastRequests()
    }

}
