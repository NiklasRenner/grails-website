package dk.renner.website

import grails.transaction.Transactional
import grails.web.mapping.LinkGenerator

@Transactional
class ScribbleService {

    LinkGenerator grailsLinkGenerator

    List<Scribble> findLastScribbles() {
        Scribble.list max: 10, sort: 'dateCreated', order: 'desc'
    }

    Scribble find(String id) {
        try {
            Scribble.findById UUID.fromString(id)
        } catch (_) {
            null
        }
    }

    Scribble save(Scribble scribble) {
        scribble.save flush: true
    }

    String createLink(UUID id) {
        grailsLinkGenerator.link absolute: true, mapping: 'scribblerShow', id: id.toString()
    }

}
