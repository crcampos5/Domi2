package domi

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured


class RestaurantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
//def beforeInterceptor = [action:this.&auth, except:["authenticate","index", "login", "create","checkuser","save","ajaxLoadTemplate"]]
	
	/*def auth() {
		if(!session.user) {
		  redirect(controller:"usuario", action:"login")
		  flash.message = "no eres usuario"
		  return false
		}
	}

/*	def authenticate = {
		def user = Restaurant.findByEmailAndPassword(params.email,params.password)
		if(user){
			session.user = user
			//flash.message = "Hola  ${user.name}"
			//render (template: "menu-top-user")
			//redirect(controller:"user", action:"index")
			render "true"
		}else {
			flash.message = "Lo siento"
			//redirect(action:"login")
			render "false"
		}
	}*/
	@Secured(['ROLE_RESTAURANT'])
    def index() {
        redirect(action: "list", params: params)
    }
	
	@Secured(['permitAll'])
	def ajaxList() {
		def list_res = Restaurant.list()
		render (template: "list", model: [restaurantInstanceList: Restaurant.list()] )
	}
	@Secured(['ROLE_RESTAURANT'])
	def ajaxShowLogin() {
		render (template: "login")
	}
	
	@Secured(['ROLE_RESTAURANT'])
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [restaurantInstanceList: Restaurant.list(params), restaurantInstanceTotal: Restaurant.count()]
    }
	@Secured(['ROLE_RESTAURANT'])
    def create() {
        [restaurantInstance: new Restaurant(params)]
    }
	@Secured(['ROLE_RESTAURANT'])
    def save() {
        def restaurantInstance = new Restaurant(params)
        if (!restaurantInstance.save(flush: true)) {
            render(view: "create", model: [restaurantInstance: restaurantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), restaurantInstance.id])
        redirect(action: "show", id: restaurantInstance.id)
    }
	@Secured(['ROLE_RESTAURANT'])
    def show(Long id) {
        def restaurantInstance = Restaurant.get(id)
		
        if (!restaurantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "list")
            return
        }

        [restaurantInstance: restaurantInstance]
    }
	@Secured(['ROLE_RESTAURANT'])
    def edit(Long id) {
        def restaurantInstance = Restaurant.get(id)
        if (!restaurantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "list")
            return
        }

        [restaurantInstance: restaurantInstance]
    }
	@Secured(['ROLE_RESTAURANT'])
    def update(Long id, Long version) {
        def restaurantInstance = Restaurant.get(id)
        if (!restaurantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (restaurantInstance.version > version) {
                restaurantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'restaurant.label', default: 'Restaurant')] as Object[],
                          "Another user has updated this Restaurant while you were editing")
                render(view: "edit", model: [restaurantInstance: restaurantInstance])
                return
            }
        }

        restaurantInstance.properties = params

        if (!restaurantInstance.save(flush: true)) {
            render(view: "edit", model: [restaurantInstance: restaurantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), restaurantInstance.id])
        redirect(action: "show", id: restaurantInstance.id)
    }
	@Secured(['ROLE_RESTAURANT'])
    def delete(Long id) {
        def restaurantInstance = Restaurant.get(id)
        if (!restaurantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "list")
            return
        }

        try {
            restaurantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'restaurant.label', default: 'Restaurant'), id])
            redirect(action: "show", id: id)
        }
    }
}
