package scribble

import dk.renner.website.scribble.Scribble
import dk.renner.website.scribble.ScribbleService
import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

@Mock(Scribble)
@TestFor(ScribbleService)
class ScribbleServiceSpec extends Specification {

    def "test"() {
        when:
            service.findLastScribbles()

        then:
            true
    }

}
