package grails_app

class UserController {

    def index() {}

    def save(){
        User user = new User(params)
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
