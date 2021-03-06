package grails_app



class TechnicianController {

    def index() {
        Service service=new Service();
        [ser: service.findAll(), operation: "Add"]
    }

    def addOrUpdate(){
        Technician technician
        if (params.id){
            technician=Technician.get(params.id)
            technician.properties=params
            def svs=[]
            svs+=technician.services
            svs.each {it->
                technician.removeFromServices(it)
            }
        }else{
            technician=new Technician(params)
        }
        for(def service in params.services){
            technician.addToServices(Service.findById(service))
        }
        if (technician.validate()){
            technician.save(flush: true)
            render(view:"showTechs", model: [tech: technician.findAll(), services: Service.findAll()])
        }else{
            render (view: "index", model:[tech:technician, ser: Service.findAll(), operation: "Add"])
        }
    }

    def edit(){
        Technician technician=Technician.findById(params.tech)
        render (view: "index", model:[tech:technician, ser: Service.findAll(), operation: "Edit"])
    }

    def view(){
        render(view:"showTechs", model: [tech: Technician.findAll(), services: Service.findAll()])
    }

    def delete(){
        Technician technician=Technician.get(params.tech)
        def services=[]
        services+=technician.services
        services.each {it->
            technician.removeFromServices(it)
        }
        technician.delete(flush: true)
        render("Successfully Deleted!")
    }

    def searchSpecificTech(){
        def technician=[]
        def req=[]
        technician=Technician.findAll()
        technician.each {it->
            if (it.services.contains(Service.findById(params.specificTech))){
                req+=it
            }
        }
        render(view:"showTechs", model: [tech:req , services: Service.findAll()])
    }

}