import com.sun.corba.se.spi.activation.ServerIdsHolder
import grails_app.Enquiry
import grails_app.Role
import grails_app.Service
import grails_app.Technician
import grails_app.User
import grails_app.UserRole

class BootStrap {

    def springSecurityService
    def init = { servletContext ->


        def user = new User(username : 'user',password: 'user').save(flush: true)
        def admin = new User(username : 'admin',password: 'admin').save(flush: true)

        def userRole = new Role(authority: "ROLE_USER").save(flush: true)
        def adminRole = new Role(authority: "ROLE_ADMIN").save(flush: true)


        new UserRole(user: user, role: userRole).save(flush: true)
        new UserRole(user: admin, role: adminRole).save(flush: true)

        def sanjeev = new Service(type: 'Laptop').save(flush: true)

    }
    def destroy = {
    }
}
