package dk.renner.website.controllers

import dk.renner.website.ScribbleService
import grails.test.mixin.TestFor
import spock.lang.Specification

@TestFor(ScribblerController)
class ScribblerControllerSpec extends Specification {

    def setup() {
        controller.scribbleService = Mock(ScribbleService)
    }

    def "test"() {
        when:
            controller.create()

        then:
            1 * controller.scribbleService.findLastScribbles()
    }

}
