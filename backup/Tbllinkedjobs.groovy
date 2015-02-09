package ContractorPortal

class Tbllinkedjobs {

	Integer idnofromCurrentJob
	Integer linkedIdno

	static mapping = {
		id column: "lineno"
		version false
	}

	static constraints = {
		idnofromCurrentJob nullable: true
		linkedIdno nullable: true
	}
}
