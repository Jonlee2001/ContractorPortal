package ContractorPortal

class Tbljobwhopays {

	String description

	static mapping = {
		id column: "JobWhoID"
		version false
	}

	static constraints = {
		description nullable: true, maxSize: 50
	}
}
