package dk.renner.website

import grails.transaction.Transactional

@Transactional
class ApplicationController {

    def index() {
        render view: 'index', model: [users: User.all]
    }

    def insert() {
        new User(firstName: 'Niklas', lastName: 'Nielsen').save flush: true, failOnError: true
        new User(firstName: 'Daniel', lastName: 'Nielsen').save flush: true
        new User(firstName: 'Torben', lastName: 'Hansen').save flush: true

        render view: 'insert'
    }

}
