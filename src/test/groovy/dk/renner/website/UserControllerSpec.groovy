package dk.renner.website

import dk.renner.website.controllers.UserController
import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(UserController)
class UserControllerSpec extends Specification {

    def "test"() {
        when:
            controller.index()

        then:
            true
    }

}
