package dk.renner.website.user

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(UserService)
class UserServiceSpec extends Specification {

    def "test"() {
        when:
            service.findAll()

        then:
            true
    }

}
