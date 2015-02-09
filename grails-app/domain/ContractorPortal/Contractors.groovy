package ContractorPortal

class Contractors {

	String name
	String title
	String firstName
	String lastName
	String address
	String town
	String county
	String postCode
	String country
	String homePhone
	String workPhone
	String mobilePhone
	String email
	
    static constraints = {
    }
	
	static mapping = {
		id column: "id", sqlType: 'integer'
		table "contractors"
		version false
	}
	String toString() {
		
			return name
		
	}
}
