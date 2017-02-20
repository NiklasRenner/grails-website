package dk.renner.website

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(RequestInfoService)
class RequestInfoServiceSpec extends Specification {

    def "test"() {
        when:
            service.requests

        then:
            true
    }

}
