package dk.renner.website.user

import spock.lang.Specification

class UserInputSpec extends Specification {

    def "asType() works as intended"() {
        given:
            def input = new UserInput(username: 'TestUser', password: 'TestPassword', authority: 'ROLE_TEST')

        when:
            def user = input as User

        then:
            user.username == 'TestUser'
            user.password == 'TestPassword'

        when:
            def role = input as Role

        then:
            role.authority == 'ROLE_TEST'
    }

}
