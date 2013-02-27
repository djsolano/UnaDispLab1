package universidad
import java.util.Date;


class Alumno extends Usuario{
	Date fechaNacimiento
	Carrera carrera
	static hasMany = [cursos:AlumnoCurso]

    static constraints = {
    }
}
