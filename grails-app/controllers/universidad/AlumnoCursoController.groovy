package universidad

import org.springframework.dao.DataIntegrityViolationException

class AlumnoCursoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [alumnoCursoInstanceList: AlumnoCurso.list(params), alumnoCursoInstanceTotal: AlumnoCurso.count()]
    }

    def create() {
        [alumnoCursoInstance: new AlumnoCurso(params)]
    }

    def save() {
        def alumnoCursoInstance = new AlumnoCurso(params)
        if (!alumnoCursoInstance.save(flush: true)) {
            render(view: "create", model: [alumnoCursoInstance: alumnoCursoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), alumnoCursoInstance.id])
        redirect(action: "show", id: alumnoCursoInstance.id)
    }

    def show(Long id) {
        def alumnoCursoInstance = AlumnoCurso.get(id)
        if (!alumnoCursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "list")
            return
        }

        [alumnoCursoInstance: alumnoCursoInstance]
    }

    def edit(Long id) {
        def alumnoCursoInstance = AlumnoCurso.get(id)
        if (!alumnoCursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "list")
            return
        }

        [alumnoCursoInstance: alumnoCursoInstance]
    }

    def update(Long id, Long version) {
        def alumnoCursoInstance = AlumnoCurso.get(id)
        if (!alumnoCursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (alumnoCursoInstance.version > version) {
                alumnoCursoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'alumnoCurso.label', default: 'AlumnoCurso')] as Object[],
                          "Another user has updated this AlumnoCurso while you were editing")
                render(view: "edit", model: [alumnoCursoInstance: alumnoCursoInstance])
                return
            }
        }

        alumnoCursoInstance.properties = params

        if (!alumnoCursoInstance.save(flush: true)) {
            render(view: "edit", model: [alumnoCursoInstance: alumnoCursoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), alumnoCursoInstance.id])
        redirect(action: "show", id: alumnoCursoInstance.id)
    }

    def delete(Long id) {
        def alumnoCursoInstance = AlumnoCurso.get(id)
        if (!alumnoCursoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "list")
            return
        }

        try {
            alumnoCursoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'alumnoCurso.label', default: 'AlumnoCurso'), id])
            redirect(action: "show", id: id)
        }
    }
}
