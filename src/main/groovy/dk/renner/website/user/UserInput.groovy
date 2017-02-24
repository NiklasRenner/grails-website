package dk.renner.website.user

class UserInput {

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
