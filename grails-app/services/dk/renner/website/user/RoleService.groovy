package dk.renner.website.user

import grails.transaction.Transactional

@Transactional
class RoleService {

    List<Role> findAll() {
        Role.all
    }

    Role findByAuthority(String authority) {
        Role.findByAuthority authority
    }

}
