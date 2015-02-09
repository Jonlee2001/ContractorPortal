package ContractorPortal

class Tblsupptypecodes {

	String code
	Integer codeDesc
	Boolean master
	Integer idfromTblsuppliers
	Integer lineno

	static mapping = {
		id column: "idno"
		version false
	}

	static constraints = {
		code nullable: true, maxSize: 50
		codeDesc nullable: true
		master nullable: true
		idfromTblsuppliers nullable: true
		lineno nullable: true
	}
}
