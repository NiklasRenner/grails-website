package dk.renner.website.util

import spock.lang.Specification
import spock.lang.Unroll

class UtilsSpec extends Specification {

    @Unroll
    def "#title"() {
        expect:
            Utils.toUuid(_input) == _result

        where:
            title                          | _input                                 | _result
            "Works like UUID.fromString()" | '8d10549e-97f4-4746-a041-3b9b539b3e41' | UUID.fromString('8d10549e-97f4-4746-a041-3b9b539b3e41')
            "Doesn't throw exception"      | 'NOT_AN_UUID'                          | null
    }

}
