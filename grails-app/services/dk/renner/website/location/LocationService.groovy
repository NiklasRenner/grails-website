package dk.renner.website.location

import com.mashape.unirest.http.Unirest
import grails.transaction.Transactional

@Transactional
class LocationService {

    def findLocation(String ip) {
        def location = Unirest.get("http://ip-api.com/json/$ip")
            .asJson()
            .body
            .object

        log.info location.toString()

        location
    }

}
