package dk.renner.website

class BootStrap {

    def init = { servletContext ->
        def user = new User(username: 'Niklas', password: 'Hej123',).save flush: true, failOnError: true
        def role = new Role(authority: 'ROLE_ADMIN').save flush: true, failOnError: true

        UserRole.create(user, role)
    }

    def destroy = {
    }

}
