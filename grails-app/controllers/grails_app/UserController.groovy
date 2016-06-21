package grails_app
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.core.userdetails.User
import org.springframework.security.core.GrantedAuthority

class UserController {

    def index() {
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal()
        grails_app.User u=grails_app.User.findByUsername(user.getUsername())
        request.getSession().setAttribute("userId", u.id);
        if (user.authorities.any { it.authority == "ROLE_ADMIN" }){
            render ("test")
        }else {
            render(view: "index")
        }
    }

    def save(){
        grails_app.User user = new User(params)
        if(user.save() == true){
            render "saved user"
        }
//        def roleUser = Role.findByName('ROLE_USER')
//        UserRole.create user
    }

    def view(){
        render(view: "showEnquiry" , model: [enq: Enquiry.findAllById()])
    }


}
