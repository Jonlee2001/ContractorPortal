package ContractorPortal



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils
import PMMS.Tbljobs
import PMMS.Jobfiles
import grails.converters.JSON
import java.text.DateFormat
import java.text.SimpleDateFormat
import pl.touk.excel.export.WebXlsxExporter

@Transactional(readOnly = true)
@Secured(['ROLE_USER'])
class OpenJobsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def springSecurityService
	def ExcelExportService
	
	DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss:SS")
	DateFormat df2 = new SimpleDateFormat("dd/MM/yyyy HH:mm")
    def index(Integer max) {
		if(!params.max){
			params.max = 10
		}
		def currentUser = springSecurityService.currentUser
		def c = OpenJobs.createCriteria()
		
			def results =  c.list(params){
				if (params.f){
					params.f.each(){key,value ->
						if(value != '' ){
							if(key == 'id'){
								eq('id',value.toLong())
							}else if(key == 'priority'){
								eq('priority',value.toInteger())
							}else if(key == 'filter1'){
								eq('filter1',value.toInteger())
							}else if(key == 'filter2'){
								eq('filter2',value.toInteger())
							}else{
								ilike(key, '%'+value+'%')
							}
						}
					}
					
				}
				contractor{
					if (SpringSecurityUtils.ifNotGranted('ROLE_ADMIN')){
						
						eq('id',currentUser.contractor.id)
					}
				}
				lt('jobType', 6)
			}
		withFormat{
			'json'{ respond ("total": results.getTotalCount(), "rows": results ) as JSON}
			'*'{ //respond results, model:[openJobsInstanceCount: results.totalCount, contractorName: currentUser.contractor]
				render (view: "indexNew", model:[contractorName: currentUser.contractor])
				}
		}
        
		//render c.list() as JSON
			
    }
	@Transactional
    def show(OpenJobs openJobsInstance) {
		if (openJobsInstance.cViewed == true){
			System.out.println ("in here")
			def job = PMMS.Tbljobs.get(openJobsInstance.id)
			job.contractorViewed = 0
			job.save(flush:true, failOnError: true)
		}
        respond openJobsInstance
    }

    def create() {
        respond new OpenJobs(params)
    }

    @Transactional
    def save(OpenJobs openJobsInstance) {
        if (openJobsInstance == null) {
            notFound()
            return
        }

        if (openJobsInstance.hasErrors()) {
            respond openJobsInstance.errors, view:'create'
            return
        }

        openJobsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'openJobs.label', default: 'OpenJobs'), openJobsInstance.id])
                redirect openJobsInstance
            }
            '*' { respond openJobsInstance, [status: CREATED] }
        }
    }

    def edit(OpenJobs openJobsInstance) {
        respond openJobsInstance
    }

    @Transactional
    def update(OpenJobs openJobsInstance) {
        if (openJobsInstance == null) {
            notFound()
            return
        }

        if (openJobsInstance.hasErrors()) {
            respond openJobsInstance.errors, view:'edit'
            return
        }

        openJobsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OpenJobs.label', default: 'OpenJobs'), openJobsInstance.id])
                redirect openJobsInstance
            }
            '*'{ respond openJobsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OpenJobs openJobsInstance) {

        if (openJobsInstance == null) {
            notFound()
            return
        }

        openJobsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OpenJobs.label', default: 'OpenJobs'), openJobsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'openJobs.label', default: 'OpenJobs'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	@Transactional
	def addInvoice() {
		def f = request.getFile('invoiceFile')
		if (f != null){
			def filePath = 'C:\\Jobs\\'+params.jobId
			if (new File(filePath).mkdirs()){
				def fileDest = new File(filePath+'\\'+f.getOriginalFilename())
				f.transferTo(fileDest)
			}
			def jobFile = new Jobfiles(filename: filePath+'\\'+f.getOriginalFilename(),idno: params.jobId, description: 'Invoice', datePublished: df.format(new Date()), hardCopy: false, comments: 'Contractor Portal Invoice').save(flush:true, failOnError: true)
			
			def tblJob = Tbljobs.get(params.jobId.toInteger())
			tblJob.assigneeViewed = 1
			tblJob.comments += "\r\n*** Invoice added on " + df2.format(new Date()) + " by "+springSecurityService.currentUser.username+" ***\r\n"
			tblJob.lastedited = new Date()
			tblJob.save(flush: true, failOnError: true)
			
			redirect (action: 'index')
		}else{
			flash.message = "Upload failed, file cannot be null!"
			redirect (action: 'index')
		}
	}
	@Transactional
	def addQuote() {
		def f = request.getFile('quoteFile')
		if (f != null){
			def fileDest = new File('C:\\Jobs\\'+params.jobId+'\\'+f.getOriginalFilename())
			if(fileDest.mkdirs()){
				f.transferTo(fileDest)
			}
			def jobFile = new Jobfiles(filename: 'C:\\Jobs\\'+params.jobId+'\\'+f.getOriginalFilename(),idno: params.jobId, description: 'Quote', datePublished: df.format(new Date()), hardCopy: false, comments: 'Contractor Portal Quote').save(flush:true, failOnError: true)
			
			
			def tblJob = Tbljobs.get(params.jobId.toInteger())
			tblJob.assigneeViewed = 1
			tblJob.comments += "\r\n*** Quote added on " + df2.format(new Date()) + " by "+springSecurityService.currentUser.username+" ***\r\n"
			tblJob.lastedited = new Date()
			tblJob.save(flush: true, failOnError: true)
			
			redirect (action: 'index')
		}else{
			flash.message = "Upload failed, file cannot be null!"
			redirect (action: 'index')
		}
	}
	@Transactional
	def addFiles() {
		def f = request.getFiles('files')
		def filePath = 'C:\\Jobs\\'+params.jobId
		if (!new File(filePath).exists()){
			new File(filePath).mkdirs()
		}
		f.each() {	file ->
			//System.out.println (file.getOriginalFilename())
			//System.out.println(filePath+'\\'+file.getOriginalFilename())
			
				try {
					System.out.println("in here")
					file.transferTo(new File(filePath+'\\'+file.getOriginalFilename()))
					def jobFile = new Jobfiles(filename: filePath+'\\'+file.getOriginalFilename(),idno: params.jobId, description: 'File', datePublished: df.format(new Date()), hardCopy: false, comments: 'Contractor Portal Upload').save(flush:true, failOnError: true)
				}catch(e){
					System.out.println ("Error!" + e)
					
				}
		
		}
		def tblJob = Tbljobs.get(params.jobId.toInteger())
		tblJob.assigneeViewed = 1
		tblJob.comments += "\r\n*** New File(s) added on " + df2.format(new Date()) + " by "+springSecurityService.currentUser.username+" ***\r\n"
		tblJob.lastedited = new Date()
		tblJob.save(flush: true, failOnError: true)
		
		redirect (action: 'show', id: params.jobId)
	}
	@Transactional
	def acceptJob() {
		def tblJob = Tbljobs.get(params.id.toInteger())
		tblJob.teamJobs = 11
		tblJob.filter2 = 40
		tblJob.assigneeViewed = 1
		tblJob.cViewed = 0
		tblJob.comments += "\r\n*** Job Accepted on " +  df2.format(new Date()) + " by " + springSecurityService.currentUser.username + " ***\r\n"
		tblJob.lastedited = new Date()
		tblJob.save(flush: true, failOnError: true)
		redirect (action: 'index')
	}
	def exportJobs() {
		def currentUser = springSecurityService.currentUser
		def headers = ['JobId', 'Address', 'Category', 'Sub-Catgeory', 'Date Issued', 'Priority']
		def withProperties = ['id', 'address', 'category', 'subCategory', 'dateInformed','priority']
		def c = OpenJobs.createCriteria()
		
			def results =  c.list(params){
				contractor{
					if (SpringSecurityUtils.ifNotGranted('ROLE_ADMIN')){
						
						eq('id',currentUser.contractor.id)
					}
				}
			}
		new WebXlsxExporter().with {
			setResponseHeaders(response)
			fillHeader(headers)
			add(results, withProperties)
			save(response.outputStream)
		}
	}
}