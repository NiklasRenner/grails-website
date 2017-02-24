package dk.renner.website.controllers

import dk.renner.website.user.User
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock(User)
@TestFor(ApplicationController)
class ApplicationControllerSpec extends Specification {

    def "hello world test"() {
        when:
            controller.index()

        then:
            true
    }

}
