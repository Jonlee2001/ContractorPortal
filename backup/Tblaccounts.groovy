package ContractorPortal

class Tblaccounts {

	String title
	String firstName
	String initials
	String lastName
	String nickname
	String jobTitle
	String name
	String address
	String town
	String county
	String postalCode
	String country
	String homePhone
	String workPhone
	String mobilePhone
	String faxNumber
	String alternativePhone
	String emailAddress
	String note
	Boolean xmasCard
	Boolean redundant
	Integer changeTo
	String entryId
	Integer category
	String acCode
	String sortcode
	String acName

	static mapping = {
		id column: "AccountID"
		version false
	}

	static constraints = {
		title nullable: true
		firstName nullable: true
		initials nullable: true
		lastName nullable: true
		nickname nullable: true
		jobTitle nullable: true
		name nullable: true
		address nullable: true
		town nullable: true
		county nullable: true
		postalCode nullable: true
		country nullable: true
		homePhone nullable: true
		workPhone nullable: true
		mobilePhone nullable: true
		faxNumber nullable: true
		alternativePhone nullable: true
		emailAddress nullable: true
		note nullable: true
		xmasCard nullable: true
		redundant nullable: true
		changeTo nullable: true
		entryId nullable: true
		category nullable: true
		acCode nullable: true, maxSize: 30
		sortcode nullable: true, maxSize: 8
		acName nullable: true, maxSize: 60
	}
}
