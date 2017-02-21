package dk.renner.website.controllers

import dk.renner.website.Scribble
import dk.renner.website.ScribbleService

class ScribblerController {

    ScribbleService scribbleService

    def create() {
        [scribbles: scribbleService.findLastScribbles()]
    }

    def show() {
        String id = params.id

        //TODO impl: error handling
        Scribble scribble = scribbleService.find(id)

        [scribble: scribble, link: scribbleService.createLink(scribble.id)]
    }

    def post() {
        Scribble scribble = new Scribble()
        bindData(scribble, params)
        scribble.data = params.text?.bytes

        //TODO impl: error handling
        scribbleService.save(scribble)

        redirect mapping: 'scribblerShow', params: [id: scribble.id]
    }

}
