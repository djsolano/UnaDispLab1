package universidad

import java.util.List;

import universidad.Role;

class Usuario {

	transient springSecurityService

	Role role
	String cedula
	String nombre
	String telefono
	String email
	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static constraints = {
		username blank: false, unique: true
		password blank: false
		email email:true
	}

	static mapping = {
		password column: '`password`'
		tablePerHierarchy false
	}

	List<Role> getAuthorities() {
		List result = new ArrayList()
		result.add(role)
		return result
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
	
	String toString() {
		return "${nombre}"
	}
}
