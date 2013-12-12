package domi

import grails.converters.JSON
import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.dao.DataIntegrityViolationException

class PedidoController {
	
	static scaffold = Pedido

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	def beforeInterceptor = [action:this.&auth, except:["ajaxAddProduct","ajaxListProduct","index","ajaxIndex","ajaxConfirmarPedido"]]

	def auth() {
		if(!session.user) {
		  redirect(controller:"user", action:"login")
		  flash.message = "no eres usuario"
		  return false
		}
	}
	
	def ajaxAddProduct = {
				
		def product = Product.get(params.productId)
		
		render product as JSON
	}
	
	def ajaxListProduct = {
		def product = Product.get(params.productId)
		def restaurant = Restaurant.get(product.restaurant.id)
		def products = Product.findAllByRestaurant(restaurant)	
		render products as JSON
	}
	
	def ajaxConfirmarPedido = {
		def list_productos = JSON.parse(JSON.parse(params.json).get("products_pedido")) 
		def pedido = new Pedido()
		
		if(session.user) {
			pedido.setUsuario(session.user)
			pedido.setTotal(JSON.parse(params.json).get("total"))
			pedido.save(failOnError: true)
			pedido.setCode(pedido.id)
			def lis = []
			for(def i=0;i<list_productos.size();i++){
				def p = list_productos.get(i.toString())
					lis.add(p)
			}
			for(i in lis){
				def Id = JSON.parse(JSON.parse(i).get("product")).get("id")
				def can = JSON.parse(i).get("cantidad")
				def producto_pedido = new ProductosPedido()
				producto_pedido.setCantidad(can)
				producto_pedido.addToProductos(Product.get(Id))
				producto_pedido.setPedido(pedido)
				producto_pedido.save(failOnError: true)
				
			}
			render(template:"list",model:[pedidoInstanceList: Pedido.list()])
		  }else {
		  	render(template:"/user/login")
			}
	

		
	}
	
	def ajaxIndex = {
		def products = Product.findAllByRestaurant(Restaurant.get(params.restaurantId))
		 render(template:"index",model:[menuInstance: products])
		
	}
	
	def ajaxLoadTemplate = {
		render (template: params.templa)
	}
	
	def ajaxShowPedido = {
		println(params.pedidoId)
		def pedidoInstance = Pedido.get(params.pedidoId)
		render (template: params.templa,model:[pedidoInstance: pedidoInstance])
	}
	
	def ajaxListPedido = {
		//params.max = Math.min(max ?: 10, 100)
		render(template:"list",model:[pedidoInstanceList: Pedido.list()])
	}
	
	def index(Long id){
		def products = Product.findAllByRestaurant(Restaurant.get(id))
		 render(view:"index",model:[menuInstance: products])
		
	}

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [pedidoInstanceList: Pedido.list(params), pedidoInstanceTotal: Pedido.count()]
    }

    def create() {
        [pedidoInstance: new Pedido(params)]
    }

    def save() {
        def pedidoInstance = new Pedido(params)
        if (!pedidoInstance.save(flush: true)) {
            render(view: "create", model: [pedidoInstance: pedidoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
        redirect(action: "show", id: pedidoInstance.id)
    }

    def show(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        [pedidoInstance: pedidoInstance]
    }

    def edit(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        [pedidoInstance: pedidoInstance]
    }

    def update(Long id, Long version) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (pedidoInstance.version > version) {
                pedidoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pedido.label', default: 'Pedido')] as Object[],
                          "Another user has updated this Pedido while you were editing")
                render(view: "edit", model: [pedidoInstance: pedidoInstance])
                return
            }
        }

        pedidoInstance.properties = params

        if (!pedidoInstance.save(flush: true)) {
            render(view: "edit", model: [pedidoInstance: pedidoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
        redirect(action: "show", id: pedidoInstance.id)
    }

    def delete(Long id) {
        def pedidoInstance = Pedido.get(id)
        if (!pedidoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
            return
        }

        try {
            pedidoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pedido.label', default: 'Pedido'), id])
            redirect(action: "show", id: id)
        }
    }
}
