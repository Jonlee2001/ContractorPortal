package ContractorPortal

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Tblkbnomcodelookup implements Serializable {

	String clientId
	Integer nomid
	Integer desc
	Integer accountId
	Integer numberCode

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append clientId
		builder.append nomid
		builder.append desc
		builder.append accountId
		builder.append numberCode
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append clientId, other.clientId
		builder.append nomid, other.nomid
		builder.append desc, other.desc
		builder.append accountId, other.accountId
		builder.append numberCode, other.numberCode
		builder.isEquals()
	}

	static mapping = {
		id composite: ["clientId", "nomid", "desc", "accountId", "numberCode"]
		version false
	}

	static constraints = {
		clientId nullable: true
		nomid nullable: true
		desc nullable: true
		numberCode nullable: true
	}
}
