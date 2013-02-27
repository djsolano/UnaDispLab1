package universidad
import grails.plugins.springsecurity.Secured

@Secured([Constantes.ROLE_ADMINISTRADOR, Constantes.ROLE_MATRICULADOR, Constantes.ROLE_PROFESOR, Constantes.ROLE_ALUMNO])
class IndexController {

    def index() { 
		render(view:'/index')
	}
	
}
