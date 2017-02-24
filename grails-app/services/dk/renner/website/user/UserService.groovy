package dk.renner.website.user

import grails.transaction.Transactional

@Transactional
class UserService {

    List<User> findAll() {
        User.all
    }

    User save(User user) {
        def saved = user.save flush: true

        saved && log.info("User created [id: $user.id, username: $user.username]")

        saved
    }

}
