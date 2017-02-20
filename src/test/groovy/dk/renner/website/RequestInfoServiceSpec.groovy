package dk.renner.website

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock(RequestInfo)
@TestFor(RequestInfoService)
class RequestInfoServiceSpec extends Specification {

    def "test"() {
        when:
            service.findLastRequests()

        then:
            true
    }

}
