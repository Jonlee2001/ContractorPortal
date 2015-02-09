package ContractorPortal

class Tblpaymentplans {

	String name
	String noOfPayments

	static mapping = {
		id generator: "assigned"
		version false
	}

	static constraints = {
		name maxSize: 45
		noOfPayments maxSize: 45
	}
}
