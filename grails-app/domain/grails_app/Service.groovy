package grails_app

class Service {
    String type
    static hasMany = [technician: Technician, enquiry: Enquiry]
    static constraints = {
        type nullable: false, blank: false
    }
}