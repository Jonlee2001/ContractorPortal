package ContractorPortal

import grails.transaction.Transactional
import pl.touk.excel.export.WebXlsxExporter
@Transactional
class ExcelExportService {

    def exportJobs(String contractorId) {
		def headers = ['JobId', 'Address', 'Category', 'Sub-Catgeory', 'Date Issued', 'Priority','Status']
		def withProperties = ['name', 'description', 'validTill', 'productNumber', 'price.value']
		def contractor = Contractors.get(contractorId)
		def openJobs = OpenJobs.findAllByContractor(contractor)
		new WebXlsxExporter().with {
			setResponseHeaders(response)
			fillHeader(headers)
			add(openJobs, withProperties)
			save(response.outputStream)
		}
	}
}
