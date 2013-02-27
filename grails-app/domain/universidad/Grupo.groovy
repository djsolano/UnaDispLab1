package universidad

class Grupo {
	Curso curso
	Integer numero
	String horario
	Usuario profesor
	static hasMany = [alumnos: Alumno]

    static constraints = {
    }
}
