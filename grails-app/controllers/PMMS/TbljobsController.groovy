package PMMS

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.converters.JSON

@Transactional(readOnly = true)
@Secured(['ROLE_USER'])
class TbljobsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Tbljobs.list(params), model:[tbljobsInstanceCount: Tbljobs.count()]
		
    }

    def show(Tbljobs tbljobsInstance) {
        respond tbljobsInstance
    }

    def create() {
        respond new Tbljobs(params)
    }

    @Transactional
    def save(Tbljobs tbljobsInstance) {
        if (tbljobsInstance == null) {
            notFound()
            return
        }

        if (tbljobsInstance.hasErrors()) {
            respond tbljobsInstance.errors, view:'create'
            return
        }

        tbljobsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tbljobs.label', default: 'Tbljobs'), tbljobsInstance.id])
                redirect tbljobsInstance
            }
            '*' { respond tbljobsInstance, [status: CREATED] }
        }
    }

    def edit(Tbljobs tbljobsInstance) {
        respond tbljobsInstance
    }

    @Transactional
    def update(Tbljobs tbljobsInstance) {
        if (tbljobsInstance == null) {
            notFound()
            return
        }

        if (tbljobsInstance.hasErrors()) {
            respond tbljobsInstance.errors, view:'edit'
            return
        }

        tbljobsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tbljobs.label', default: 'Tbljobs'), tbljobsInstance.id])
                redirect tbljobsInstance
            }
            '*'{ respond tbljobsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tbljobs tbljobsInstance) {

        if (tbljobsInstance == null) {
            notFound()
            return
        }

        tbljobsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tbljobs.label', default: 'Tbljobs'), tbljobsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tbljobs.label', default: 'Tbljobs'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
