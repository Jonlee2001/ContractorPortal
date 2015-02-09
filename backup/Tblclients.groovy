package ContractorPortal

class Tblclients {

	String clientId
	Integer insId
	Integer regId
	String clientName
	String address
	String incorpNo
	String incorpDate
	Date yrStart
	Date yrEnd
	Double basePlus
	String acNo
	String acName
	Date renewalDate
	BigDecimal premium
	BigDecimal sumInsured
	String policyNum
	BigDecimal waterExcess
	BigDecimal otherClaimsExcess
	BigDecimal subsidenceExcess
	BigDecimal zero
	String insNotes

	static mapping = {
		id name: "clientId", generator: "assigned"
		version false
	}

	static constraints = {
		insId nullable: true
		regId nullable: true
		clientName nullable: true
		address nullable: true
		incorpNo nullable: true
		incorpDate nullable: true
		yrStart nullable: true
		yrEnd nullable: true
		basePlus nullable: true
		acNo nullable: true
		acName nullable: true
		renewalDate nullable: true
		premium nullable: true, scale: 4
		sumInsured nullable: true, scale: 4
		policyNum nullable: true
		waterExcess nullable: true, scale: 4
		otherClaimsExcess nullable: true, scale: 4
		subsidenceExcess nullable: true, scale: 4
		zero nullable: true, scale: 4
		insNotes nullable: true
	}
}
