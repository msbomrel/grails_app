package grails_app

class EnquiryController {

    def index() { }

    def add(){
        def service = Service.findById(params.service as long)
        def enquiry = new Enquiry()
        println params
        enquiry.priority = params.priority
        enquiry.details = params.details
        enquiry.status="New"
        enquiry.service=service
        enquiry.serviceReqDate=params.serviceReqDate
        enquiry.user=User.findById((long)request.getSession().getAttribute("userid"))
        enquiry.save(flush:true)
        render ("Successfully Added")
    }
}
