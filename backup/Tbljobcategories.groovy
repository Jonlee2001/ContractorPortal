package ContractorPortal

class Tbljobcategories {

	String jobCategoryName

	static mapping = {
		id column: "JobCategoryID"
		version false
	}

	static constraints = {
		jobCategoryName nullable: true, maxSize: 50, unique: true
	}
}
