package domi

import org.springframework.dao.DataIntegrityViolationException

class ProductosPedidoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [productosPedidoInstanceList: ProductosPedido.list(params), productosPedidoInstanceTotal: ProductosPedido.count()]
    }

    def create() {
        [productosPedidoInstance: new ProductosPedido(params)]
    }

    def save() {
        def productosPedidoInstance = new ProductosPedido(params)
        if (!productosPedidoInstance.save(flush: true)) {
            render(view: "create", model: [productosPedidoInstance: productosPedidoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), productosPedidoInstance.id])
        redirect(action: "show", id: productosPedidoInstance.id)
    }

    def show(Long id) {
        def productosPedidoInstance = ProductosPedido.get(id)
        if (!productosPedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "list")
            return
        }

        [productosPedidoInstance: productosPedidoInstance]
    }

    def edit(Long id) {
        def productosPedidoInstance = ProductosPedido.get(id)
        if (!productosPedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "list")
            return
        }

        [productosPedidoInstance: productosPedidoInstance]
    }

    def update(Long id, Long version) {
        def productosPedidoInstance = ProductosPedido.get(id)
        if (!productosPedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (productosPedidoInstance.version > version) {
                productosPedidoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'productosPedido.label', default: 'ProductosPedido')] as Object[],
                          "Another user has updated this ProductosPedido while you were editing")
                render(view: "edit", model: [productosPedidoInstance: productosPedidoInstance])
                return
            }
        }

        productosPedidoInstance.properties = params

        if (!productosPedidoInstance.save(flush: true)) {
            render(view: "edit", model: [productosPedidoInstance: productosPedidoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), productosPedidoInstance.id])
        redirect(action: "show", id: productosPedidoInstance.id)
    }

    def delete(Long id) {
        def productosPedidoInstance = ProductosPedido.get(id)
        if (!productosPedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "list")
            return
        }

        try {
            productosPedidoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'productosPedido.label', default: 'ProductosPedido'), id])
            redirect(action: "show", id: id)
        }
    }
}
