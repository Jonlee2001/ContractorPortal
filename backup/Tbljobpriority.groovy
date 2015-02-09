package ContractorPortal

class Tbljobpriority {

	Integer priority
	String description

	static mapping = {
		id column: "JobPID"
		version false
	}

	static constraints = {
		priority nullable: true
		description nullable: true, maxSize: 50
	}
}
