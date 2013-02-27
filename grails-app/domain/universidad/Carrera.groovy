package universidad

class Carrera {

	Integer codigo
	String nombre
	String titulo
	static hasMany = [cursos: Curso]
	
    static constraints = {
    }
}
