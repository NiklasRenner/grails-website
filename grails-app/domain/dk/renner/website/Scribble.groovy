package dk.renner.website

import grails.databinding.BindUsing

class Scribble {

    UUID id
    String title
    @BindUsing({ obj, source -> return source['data']?.bytes })
    byte[] data
    Date dateCreated

    static constraints = {
        title size: (1..255)
        data size: (1..Constants.ONE_MB)
    }

    static mapping = {
        id generator: 'uuid2'
    }

}
