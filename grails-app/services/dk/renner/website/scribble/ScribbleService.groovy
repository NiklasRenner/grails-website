package dk.renner.website.scribble

import dk.renner.website.util.Utils
import grails.transaction.Transactional
import grails.web.mapping.LinkGenerator

@Transactional
class ScribbleService {

    LinkGenerator grailsLinkGenerator

    List<Scribble> findLastScribbles() {
        Scribble.list max: 10, sort: 'frontend.dateCreated', order: 'desc'
    }

    Scribble find(String id) {
        Scribble.findById Utils.toUuid(id)
    }

    Scribble save(Scribble scribble) {
        def saved = scribble.save flush: true

        saved && log.info("Scribble created [id: $saved.id, title: $saved.title]")

        saved
    }

    String createLink(UUID id) {
        grailsLinkGenerator.link absolute: true, mapping: 'scribblerShow', id: id.toString()
    }


}
