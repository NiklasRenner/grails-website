package dk.renner.website.controllers

import dk.renner.website.Scribble

class ScribblerController {

    def create() {}

    def show() {
        String id = params.id

        [scribble: Scribble.findById(id)]
    }

    def post() {
        Scribble scribble = new Scribble()
        bindData(scribble, params)
        scribble.data = params.text?.bytes

        //TODO impl: error handling
        scribble.save flush: true

        redirect mapping: 'scribblerShow', params: [id: scribble.id]
    }

}
