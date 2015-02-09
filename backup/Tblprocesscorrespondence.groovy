package ContractorPortal

class Tblprocesscorrespondence {

	Integer jobno
	String filename
	String desc
	Date filedate
	String processedby
	String entrytype
	String fullpathname

	static mapping = {
		id column: "idno"
		version false
	}

	static constraints = {
		jobno nullable: true
		filename nullable: true
		desc nullable: true
		filedate nullable: true
		processedby nullable: true, maxSize: 45
		entrytype nullable: true, maxSize: 45
		fullpathname nullable: true
	}
}
