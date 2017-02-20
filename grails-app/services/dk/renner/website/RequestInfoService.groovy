package dk.renner.website

import grails.transaction.Transactional

@Transactional
class RequestInfoService {

    List<RequestInfo> getRequests() {
        RequestInfo.all
    }

}
