package grails_app

class Enquiry {
    Service service
   // User user
    String status
    String priority
    String details
    Date serviceReqDate

    static constraints = {
        status inList: ["New", "In Progress", "Solved"]
        priority inList: ["High", "Normal", "Low"]
    }
}
