package domi

import org.springframework.dao.DataIntegrityViolationException

class RecompointController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [recompointInstanceList: Recompoint.list(params), recompointInstanceTotal: Recompoint.count()]
    }

    def create() {
        [recompointInstance: new Recompoint(params)]
    }

    def save() {
        def recompointInstance = new Recompoint(params)
        if (!recompointInstance.save(flush: true)) {
            render(view: "create", model: [recompointInstance: recompointInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), recompointInstance.id])
        redirect(action: "show", id: recompointInstance.id)
    }

    def show(Long id) {
        def recompointInstance = Recompoint.get(id)
        if (!recompointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "list")
            return
        }

        [recompointInstance: recompointInstance]
    }

    def edit(Long id) {
        def recompointInstance = Recompoint.get(id)
        if (!recompointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "list")
            return
        }

        [recompointInstance: recompointInstance]
    }

    def update(Long id, Long version) {
        def recompointInstance = Recompoint.get(id)
        if (!recompointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (recompointInstance.version > version) {
                recompointInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'recompoint.label', default: 'Recompoint')] as Object[],
                          "Another user has updated this Recompoint while you were editing")
                render(view: "edit", model: [recompointInstance: recompointInstance])
                return
            }
        }

        recompointInstance.properties = params

        if (!recompointInstance.save(flush: true)) {
            render(view: "edit", model: [recompointInstance: recompointInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), recompointInstance.id])
        redirect(action: "show", id: recompointInstance.id)
    }

    def delete(Long id) {
        def recompointInstance = Recompoint.get(id)
        if (!recompointInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "list")
            return
        }

        try {
            recompointInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'recompoint.label', default: 'Recompoint'), id])
            redirect(action: "show", id: id)
        }
    }
}
