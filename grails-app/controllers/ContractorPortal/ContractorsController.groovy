package ContractorPortal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_USER'])
class ContractorsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 25, 100)
        respond Contractors.list(params), model:[contractorsInstanceCount: Contractors.count()]
    }

    def show(Contractors contractorsInstance) {
        respond contractorsInstance
    }

    def create() {
        respond new Contractors(params)
    }

    @Transactional
    def save(Contractors contractorsInstance) {
        if (contractorsInstance == null) {
            notFound()
            return
        }

        if (contractorsInstance.hasErrors()) {
            respond contractorsInstance.errors, view:'create'
            return
        }

        contractorsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contractors.label', default: 'Contractors'), contractorsInstance.id])
                redirect contractorsInstance
            }
            '*' { respond contractorsInstance, [status: CREATED] }
        }
    }

    def edit(Contractors contractorsInstance) {
        respond contractorsInstance
    }

    @Transactional
    def update(Contractors contractorsInstance) {
        if (contractorsInstance == null) {
            notFound()
            return
        }

        if (contractorsInstance.hasErrors()) {
            respond contractorsInstance.errors, view:'edit'
            return
        }

        contractorsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Contractors.label', default: 'Contractors'), contractorsInstance.id])
                redirect contractorsInstance
            }
            '*'{ respond contractorsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Contractors contractorsInstance) {

        if (contractorsInstance == null) {
            notFound()
            return
        }

        contractorsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Contractors.label', default: 'Contractors'), contractorsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractors.label', default: 'Contractors'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
