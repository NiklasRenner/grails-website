package dk.renner.website

class Scribble {

    String id
    String title
    byte[] data
    Date dateCreated

    static constraints = {
        id unique: true
        title size: (1..255)
        data size: (1..Constants.ONE_MB)
    }

    static mapping = {
        id generator: 'uuid'
    }

}
