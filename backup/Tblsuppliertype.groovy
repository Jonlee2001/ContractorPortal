package ContractorPortal

class Tblsuppliertype {

	String description
	String notes
	Integer deptId

	static mapping = {
		id column: "SupplierType_ID"
		version false
	}

	static constraints = {
		description nullable: true, maxSize: 50
		notes nullable: true
	}
}
