package dk.renner.website

import groovy.transform.ToString

@ToString(includeNames = false, includePackage = false)
class RequestInfo {

    String clientIp
    String requestUri
    Date requestTime

    static constraints = {
    }

}
