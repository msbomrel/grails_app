package grails_app

class EnquiryController {

    def index() { }

    def add(){
        /*println "params = $params"
        Enquiry enquiry=new Enquiry(params)
        println "enquiry.service = $enquiry.service"
        def service = Service.findById(params.service as long)
        println "enquiry.serviceReqDate = $enquiry.serviceReqDate"*/
       // enquiry.user=User.findById(1)
        def service = Service.findById(params.service as long)
        def enquiry = new Enquiry()
        println params
        enquiry.priority = params.priority
        enquiry.details = params.details
        enquiry.status="New"
        enquiry.service=service
        enquiry.serviceReqDate=params.serviceReqDate
        enquiry.user=User.findById((long)request.getSession().getAttribute("userId"))
        enquiry.save(flush:true)
        render ("Successfully Added")
    }
    def renderFinalView = {
        render(view:"index");
    }
}
