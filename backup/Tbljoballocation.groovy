package ContractorPortal

class Tbljoballocation {

	Integer jobCategoryId
	Integer accountId
	String clientId

	static mapping = {
		id column: "JobAllocationID"
		version false
	}

	static constraints = {
		jobCategoryId nullable: true
		accountId nullable: true
		clientId nullable: true, maxSize: 50
	}
}
