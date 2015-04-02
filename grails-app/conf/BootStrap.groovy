import ContractorPortal.*

class BootStrap {

    def init = { servletContext ->
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
		if (User.findByUsername('PeterRalph') == null){
			def testUser = new User(username: 'PeterRalph', password: 'password', contractor : Contractors.get(212), email: 'flatmaintenance@hotmail.co.uk')
			testUser.save(flush: true, failOnError: true)
			UserRole.create testUser, userRole, true}
		if (User.findByUsername('DavidYendall') == null){
			def testUser = new User(username: 'DavidYendall', password: 'password', contractor : Contractors.get(4378), email: 'david@northwayelectrical.co.uk')
			testUser.save(flush: true, failOnError: true)
			UserRole.create testUser, userRole, true}
		if (User.findByUsername('JonLee') == null){
			def adminUser = new User(username: 'JonLee', password: 'admin', contractor : Contractors.get(137), email: 'jon@pmms.org.uk')
			adminUser.save(flush: true, failOnError: true)
			UserRole.create adminUser, adminRole, true
		UserRole.create adminUser, userRole, true}
		
		
		
  
		//assert User.count() == 2
		//assert Role.count() == 2
		//assert UserRole.count() == 3
    }
    def destroy = {
    }
}
