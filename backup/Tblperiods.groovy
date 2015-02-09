package ContractorPortal

class Tblperiods {

	String description
	Integer number

	static mapping = {
		id column: "PeriodID", generator: "assigned"
		version false
	}

	static constraints = {
		description nullable: true, maxSize: 50
		number nullable: true
	}
}
