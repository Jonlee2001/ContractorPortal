package ContractorPortal

class Jobfiles {

	String filename
	Integer idno
	String description
	String datePublished
	Boolean hardCopy
	String comments

	static mapping = {
		version false
	}

	static constraints = {
		idno nullable: true
		description nullable: true, maxSize: 50
		datePublished nullable: true, maxSize: 50
		hardCopy nullable: true
		comments nullable: true, maxSize: 100
	}
}
