package ContractorPortal
import PMMS.Jobfiles

class OpenJobs {

	String department
	String clientId
	Contractors contractor
	Integer jobType
	Date dateReceived
	String reportedBy
	Date dateInformed
	Date dateJobDone
	String enteredBy
	String propertyManager
	Date lastUpdated
	Date diaryDate
	Integer filter1
	Integer filter2
	String propertyId
	String assignedTo
	String category
	String subCategory
	String faultDetails
	Integer priority
	Integer overdue
	String address
	Boolean cViewed
	
    static constraints = {
		category inList: ['Site Wide  Maintenance','Interior block maintenance','Exterior block maintenance', 'Inside your property']
    }
	
	static mapping ={
		table "open_jobs"
		id sqlType: 'integer'
		contractor sqlType: 'integer'
		faultDetails sqlType: 'longtext'
		cViewed column: 'cViewed'
		version false
	}
}
