package dk.renner.website.controllers

import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(ScribblerController)
class ScribblerControllerSpec extends Specification {

    def "test"() {
        when:
            controller.create()

        then:
            true
    }

}
