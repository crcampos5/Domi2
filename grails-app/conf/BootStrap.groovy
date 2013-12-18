import java.util.Date;

import domi.Restaurant

import domi.User
import grails.util.GrailsUtil
import domi.Product
import domi.Usuario
import domi.Rol
import domi.UsuarioRol

class BootStrap {

    def init = { servletContext ->
			
			def adminRole = new Rol(authority: 'ROLE_ADMIN').save(flush: true) 
			def userRole = new Rol(authority: 'ROLE_USER').save(flush: true)
			def restaurantRole = new Rol(authority: 'ROLE_RESTAURANT').save(flush: true)
			
		/*	def testUser = new Usuario(username: 'admin', password: 'password') 
			testUser.save(flush: true)
			def testUser1 = new Usuario(username: 'usuario', password: 'password')
			testUser1.save(flush: true)
			def testUser2 = new Usuario(username: 'restaurante', password: 'password')
			testUser2.save(flush: true)
			
			UsuarioRol.create testUser, adminRole, true
			UsuarioRol.create testUser1, userRole, true
			UsuarioRol.create testUser2, restaurantRole, true
			
			assert Usuario.count() == 3 
			assert Rol.count() == 3 
			assert UsuarioRol.count() == 3*/
		
				def restaurant = new Restaurant( 
					nit: "2222222222",
					username:"Mostaza",
					name:"Mostaza",
					email:"crcampos4@hotmail.com",
					password:"12345678",
					description:"Comidas rapidas",
					role:"restaurant",
					direccion: "",
					fanpage: "",
					logo: "",
					web: ""
					)
				restaurant.save(failOnError: true)
				UsuarioRol.create restaurant, restaurantRole, true
				
				def restaurant1 = new Restaurant(nit: "2222222223",
					username:"Mostaza2",
					name:"Mostaza2",
					email:"csrcampos4@hotmail.com",
					password:"12345678",
					description:"Comidas rapidas para la buena digestion teniendo en cuenta los grandes bla bla bla bla bla lba lba",
					role:"restaurant",
					direccion: "",
					fanpage: "",
					logo: "",
					web: ""
					)
				restaurant1.save(failOnError: true)
				UsuarioRol.create restaurant1, restaurantRole, true
				
				def restaurant2 = new Restaurant(nit: "2222222224",
					username:"Mostaza3",
					name:"Mostaza3",
					email:"scrcampos4@hotmail.com",
					password:"12345678",
					description:"Comidas rapidas para la buena digestion teniendo en cuenta los grandes bla bla bla bla bla lba lba",
					role:"restaurant",
					direccion: "",
					fanpage: "",
					logo: "",
					web: ""
					)
				restaurant2.save(failOnError: true)
				UsuarioRol.create restaurant2, restaurantRole, true
				
				def restaurant3 = new Restaurant(nit: "2222222252",
					username:"Mostaza4",
					name:"Mostaza4",
					email:"scrcamdpos4@hotmail.com",
					password:"12345678",
					description:"Comidas rapidas para la buena digestion teniendo en cuenta los grandes bla bla bla bla bla lba lba",
					role:"restaurant",
					direccion: "",
					fanpage: "",
					logo: "",
					web: ""
					)
				restaurant3.save(failOnError: true)
				UsuarioRol.create restaurant3, restaurantRole, true
				
				def product1= new Product(
					name: "pollo",
					description: "buen sabor del pollo de cualquier lado blablablablabla",
					price: 10000,
					
					)
				product1.setRestaurant(restaurant1)
				product1.save(failOnError: true)
				
				def product2=new Product(
					name: "carne",
					description: "buen sabor de la carne de cualquier lado blablablablabla",
					price: 15000,

					)
				product2.setRestaurant(restaurant1)
				product2.save(failOnError: true)
				
				def product3=new Product(
					name: "hamburguesa",
					description: "buen sabor de la hamburguesa de cualquier lado blablablablabla",
					price: 20000,

					)
				product3.setRestaurant(restaurant1)
				product3.save(failOnError: true)
				
				def product4=new Product(
					name: "arepa",
					description: "buen sabor de la arepa de cualquier lado blablablablabla",
					price: 5000,

					)
				product4.setRestaurant(restaurant1)
				product4.save(failOnError: true)
				
				def product5=new Product(
					name: "arroz",
					description: "buen sabor del arroz de cualquier lado blablablablabla",
					price: 7000,

					)
				product5.setRestaurant(restaurant1)
				product5.save(failOnError: true)
				def user = new User(
					username: "crcampos5",
					name: "Cristian",
					lastname: "Campos",
					email: "campos_012@hotmail.com",
					phonenumber: "3132435599",
					gender: "Masculino",
					birthdate: new Date(),
					password: "12345678",
					
					)
				user.save(failOnError: true)
				UsuarioRol.create user, userRole, true
    }
    def destroy = {
    }
}
