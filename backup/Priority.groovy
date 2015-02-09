package ContractorPortal

class Priority {

	String priority
	Integer nodaystoadd

	static mapping = {
		version false
	}

	static constraints = {
		priority nullable: true, maxSize: 50
		nodaystoadd nullable: true
	}
}
