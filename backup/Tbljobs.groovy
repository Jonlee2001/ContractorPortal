package ContractorPortal

class Tbljobs {

	String clientId
	String propertyId
	Integer accountId
	Integer accountIdprior
	Integer userId
	Integer jobCategoryId
	Integer jobType
	String contractor
	String oldNo
	Date dateRecd
	String reportedBy
	String address
	String telNoHome
	String telNoBus
	String telNoOther
	String faultDetails
	Date dateInformed
	Integer priority
	String access
	String whoPays
	Date dateJobDone
	Date dateInvoiced
	Integer cleared
	Integer invTranId
	String comments
	BigDecimal costAsType
	String nominalId
	Integer manager
	Integer assignedto
	Integer ticketNo
	Date lastedited
	Date diaryDate
	Integer teamJobs
	Integer filter2
	Integer jobCode
	Integer jobStatus
	Integer deptId

	static mapping = {
		id column: "JobID"
		version false
	}

	static constraints = {
		clientId nullable: true, maxSize: 50
		propertyId nullable: true, maxSize: 50
		accountId nullable: true
		accountIdprior nullable: true
		userId nullable: true
		jobCategoryId nullable: true
		jobType nullable: true
		contractor nullable: true, maxSize: 50
		oldNo nullable: true, maxSize: 50
		dateRecd nullable: true
		reportedBy nullable: true, maxSize: 50
		address nullable: true
		telNoHome nullable: true, maxSize: 50
		telNoBus nullable: true, maxSize: 50
		telNoOther nullable: true, maxSize: 50
		faultDetails nullable: true
		dateInformed nullable: true
		priority nullable: true
		access nullable: true
		whoPays nullable: true, maxSize: 50
		dateJobDone nullable: true
		dateInvoiced nullable: true
		cleared nullable: true
		invTranId nullable: true
		comments nullable: true
		costAsType nullable: true, scale: 4
		nominalId nullable: true, maxSize: 50
		manager nullable: true
		assignedto nullable: true
		ticketNo nullable: true
		lastedited nullable: true
		diaryDate nullable: true
		teamJobs nullable: true
		filter2 nullable: true
		jobCode nullable: true
		jobStatus nullable: true
		deptId nullable: true
	}
}
