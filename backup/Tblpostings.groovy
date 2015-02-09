package ContractorPortal

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Tblpostings implements Serializable {

	Integer typeid
	String clientid
	String propertyid
	Integer accountid
	Integer nomid
	Integer bdetailsId
	Integer jobId
	Date date
	String grp
	String ref
	String details
	String brec
	String paid
	BigDecimal amount
	BigDecimal dr
	BigDecimal cr

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append typeid
		builder.append clientid
		builder.append propertyid
		builder.append accountid
		builder.append nomid
		builder.append bdetailsId
		builder.append jobId
		builder.append date
		builder.append grp
		builder.append ref
		builder.append details
		builder.append brec
		builder.append paid
		builder.append amount
		builder.append dr
		builder.append cr
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append typeid, other.typeid
		builder.append clientid, other.clientid
		builder.append propertyid, other.propertyid
		builder.append accountid, other.accountid
		builder.append nomid, other.nomid
		builder.append bdetailsId, other.bdetailsId
		builder.append jobId, other.jobId
		builder.append date, other.date
		builder.append grp, other.grp
		builder.append ref, other.ref
		builder.append details, other.details
		builder.append brec, other.brec
		builder.append paid, other.paid
		builder.append amount, other.amount
		builder.append dr, other.dr
		builder.append cr, other.cr
		builder.isEquals()
	}

	static mapping = {
		id composite: ["typeid", "clientid", "propertyid", "accountid", "nomid", "bdetailsId", "jobId", "date", "grp", "ref", "details", "brec", "paid", "amount", "dr", "cr"]
		version false
	}

	static constraints = {
		typeid nullable: true
		clientid nullable: true, maxSize: 50
		propertyid nullable: true, maxSize: 50
		accountid nullable: true
		nomid nullable: true
		bdetailsId nullable: true
		jobId nullable: true
		date nullable: true
		grp nullable: true
		ref nullable: true
		details nullable: true
		brec nullable: true
		paid nullable: true
		amount nullable: true, scale: 4
		dr nullable: true, scale: 4
		cr nullable: true, scale: 4
	}
}
