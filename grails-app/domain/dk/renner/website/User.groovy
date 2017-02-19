package dk.renner.website

class User {

    String firstName
    String lastName

    static mapping = {
        id generator: 'sequence'
    }

    static constraints = {
    }

}
