package dk.renner.website.request

import grails.transaction.Transactional

@Transactional
class RequestInfoService {

    RequestInfo find(String id) {
        RequestInfo.findById(id?.toLong())
    }

    List<RequestInfo> findLastRequests() {
        RequestInfo.list max: 10, sort: 'dateCreated', order: 'desc'
    }

    Integer countAll() {
        RequestInfo.count
    }

}
