package dk.renner.website.request

import groovy.transform.ToString

@ToString(includeNames = false, includePackage = false)
class RequestInfo {

    String clientIp
    String requestUri
    Date dateCreated

    static constraints = {
    }

}
