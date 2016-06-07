package grails_app

class ServiceController {

    def index() {}

    def add(){
        Service service=new Service(params)
        service.save()
        render ("Successfully Added")
    }
}