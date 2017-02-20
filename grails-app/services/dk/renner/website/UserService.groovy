package dk.renner.website

import grails.transaction.Transactional

@Transactional
class UserService {

    List<User> findAll() {
        User.all
    }

}
