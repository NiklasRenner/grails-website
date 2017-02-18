package dk.renner.website

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(ApplicationController)
class ApplicationControllerSpec extends Specification {

    def "hello world test"() {
        when:
            controller.index()

        then:
            true
    }

}
