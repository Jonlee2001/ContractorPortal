package ContractorPortal

class Tbljobdepts {

	String departmentName

	static mapping = {
		version false
	}

	static constraints = {
		departmentName maxSize: 45
	}
}
