package dk.renner.website

import dk.renner.website.interceptors.RequestLoggingInterceptor
import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(RequestLoggingInterceptor)
class RequestLoggingInterceptorSpec extends Specification {

    void "Test requestLogging interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"requestLogging")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }

}
