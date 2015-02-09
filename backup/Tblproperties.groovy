package ContractorPortal

class Tblproperties {

	String propertyId
	String clientId
	Integer propTypeId
	String contAddId
	String shareNum
	String leaseDate
	Boolean reSale
	Boolean sublet
	String type
	String unitNo
	String address1
	String address2
	String town
	String county
	String postCode
	String title
	String forenames
	String surname
	String owner
	String movedIn
	String contAddNo
	String contAddress1
	String contAddress2
	String contTown
	String contCounty
	String contPostCode
	String homePhone
	String busPhone
	Boolean stOrder
	BigDecimal arrears
	BigDecimal interest
	String interestStart
	String interestEnd
	BigDecimal grdRent
	BigDecimal svcCharge
	Integer noPmts
	Integer noDue
	BigDecimal scdue
	Integer noReceived
	BigDecimal received
	BigDecimal balance
	String svcChSent
	String remind1sent
	String remind2sent
	String remind3sent
	String solicitor
	Boolean director
	Double shares
	String notes
	Boolean arrearsList
	BigDecimal overdue
	String entryId
	Integer propCheckIdno
	String emailaddress
	String blockDetails
	String arrearsCode
	String arrearsCode2

	static mapping = {
		id name: "propertyId", generator: "assigned"
		version false
	}

	static constraints = {
		clientId nullable: true
		propTypeId nullable: true
		contAddId nullable: true, maxSize: 50
		shareNum nullable: true
		leaseDate nullable: true
		reSale nullable: true
		sublet nullable: true
		type nullable: true
		unitNo nullable: true
		address1 nullable: true, maxSize: 50
		address2 nullable: true, maxSize: 50
		town nullable: true, maxSize: 50
		county nullable: true, maxSize: 50
		postCode nullable: true, maxSize: 50
		title nullable: true
		forenames nullable: true
		surname nullable: true
		owner nullable: true
		movedIn nullable: true
		contAddNo nullable: true
		contAddress1 nullable: true, maxSize: 50
		contAddress2 nullable: true, maxSize: 50
		contTown nullable: true, maxSize: 50
		contCounty nullable: true, maxSize: 50
		contPostCode nullable: true, maxSize: 50
		homePhone nullable: true
		busPhone nullable: true
		stOrder nullable: true
		arrears nullable: true
		interest nullable: true
		interestStart nullable: true
		interestEnd nullable: true
		grdRent nullable: true
		svcCharge nullable: true
		noPmts nullable: true
		noDue nullable: true
		scdue nullable: true
		noReceived nullable: true
		received nullable: true
		balance nullable: true
		svcChSent nullable: true
		remind1sent nullable: true
		remind2sent nullable: true
		remind3sent nullable: true
		solicitor nullable: true, maxSize: 50
		director nullable: true
		shares nullable: true
		notes nullable: true
		arrearsList nullable: true
		overdue nullable: true
		entryId nullable: true
		propCheckIdno nullable: true
		emailaddress nullable: true
		blockDetails nullable: true
		arrearsCode nullable: true, maxSize: 45
		arrearsCode2 nullable: true, maxSize: 45
	}
}
