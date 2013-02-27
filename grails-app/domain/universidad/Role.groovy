package universidad

class Role {

	String authority
	
	static hasMany = [usuarios:Usuario]

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	
	String toString(){
		return "${authority}"
	}
}
