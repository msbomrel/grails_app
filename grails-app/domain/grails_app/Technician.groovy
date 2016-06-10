package grails_app
class Technician {
    String name
    String address
    String contact
    String email
    String experience
    static hasMany = [services:Service]
    static belongsTo = Service


    static constraints = {
        contact size: 7..10, blank:false, nullable: false
        email email: true, blank: true, nullable: true
        experience blank: true, nullable: true
        address blank: true, nullable: true
        services blank:false, nullable: false
    }
}