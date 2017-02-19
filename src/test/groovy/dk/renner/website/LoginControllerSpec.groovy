package dk.renner.website

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock(User)
@TestFor(LoginController)
class LoginControllerSpec extends Specification {

    def "test"() {
        when:
            controller.index()

        then:
            true
    }

}
