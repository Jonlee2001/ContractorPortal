package PMMS

class Jobfiles {

	String filename
	Integer idno
	String description
	String datePublished
	Boolean hardCopy
	String comments

	static mapping = {
		datasource 'pmms'
		
		id column: "ID", sqlType: "int"
		datePublished column: "DatePublished"
		hardCopy column: "HardCopy"
		version false
	}

	static constraints = {
		idno nullable: true
		description nullable: true, maxSize: 50
		datePublished nullable: true, maxSize: 50
		hardCopy nullable: true
		comments nullable: true, maxSize: 100
	}
	
	String toString() {
		def splitString = filename.tokenize('\\')
		
		return splitString.get(splitString.size()-1)
	}
}
