package dk.renner.website

import dk.renner.website.controllers.UserController
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock([RequestInfo, User])
@TestFor(UserController)
class UserControllerSpec extends Specification {

    def setup() {
        controller.userService = Mock(UserService)
        controller.requestInfoService = Mock(RequestInfoService)
    }

    def "test"() {
        when:
            controller.index()

        then:
            1 * controller.userService.findAll()
            1 * controller.requestInfoService.countAll()
            1 * controller.requestInfoService.findLastRequests()
    }

}
