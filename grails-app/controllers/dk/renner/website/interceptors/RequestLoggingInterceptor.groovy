package dk.renner.website.interceptors

import dk.renner.website.request.RequestInfo

class RequestLoggingInterceptor {

    RequestLoggingInterceptor() {
        matchAll()
    }

    boolean before() {
        RequestInfo.withTransaction {
            def requestInfo = new RequestInfo(clientIp: request.remoteAddr, requestUri: request.requestURI).save flush: true
            log.info "IP [$requestInfo.clientIp] requested URI [$requestInfo.requestUri]"
        }

        true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }

}
