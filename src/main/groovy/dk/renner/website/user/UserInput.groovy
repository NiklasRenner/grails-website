package dk.renner.website.user

import grails.validation.Validateable

class UserInput implements Validateable {

    //user
    String username
    String password

    //role
    String authority

    def asType(Class type) {
        switch (type) {
            case User:
                return new User(username: username, password: password)
            case Role:
                return new Role(authority: authority)
        }
    }

}
