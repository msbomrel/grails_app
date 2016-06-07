import grails_app.Role
import grails_app.User
import grails_app.UserRole

class BootStrap {

    def springSecurityService
    def init = { servletContext ->

        def adminRole = Role.findOrSaveWhere(authority:'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username:'admin',password:'admin')



        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,adminRole,true)
        }
    }
    def destroy = {
    }
}
