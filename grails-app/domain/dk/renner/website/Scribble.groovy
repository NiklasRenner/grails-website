package dk.renner.website

class Scribble {

    UUID id
    String title
    byte[] data
    Date dateCreated

    static constraints = {
        title size: (1..255)
        data size: (1..Constants.ONE_MB)
    }

    static mapping = {
        id generator : 'uuid2'
    }

}
