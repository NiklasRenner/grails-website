package dk.renner.website.controllers

import dk.renner.website.scribble.Scribble
import dk.renner.website.scribble.ScribbleService

class ScribblerController {

    ScribbleService scribbleService

    def index() {
        [scribbles: scribbleService.findLastScribbles()]
    }

    def show() {
        String id = params.id

        Scribble scribble = scribbleService.find id

        if (!scribble) {
            return redirect(url: '/404')
        }

        [scribble: scribble, link: scribbleService.createLink(scribble.id)]
    }

    def post(Scribble scribble) {
        //TODO REVIEW: 'method' in named url mappings for some reason doesn't work,
        // so 'GET' on '/scribbler/post' results in this method being called,
        // when it should only ever be called when using 'POST'.
        // this is why '!scribble' is used.
        if (!scribble || !scribble.validate()) {
            return redirect(url: '/500')
        }

        scribbleService.save scribble

        redirect mapping: 'scribblerShow', params: [id: scribble.id]
    }

}
