import java.util.Date;

import domi.Restaurant

import domi.User
import grails.util.GrailsUtil
import domi.Product

class BootStrap {

    def init = { servletContext ->
	
		
				def restaurant = new Restaurant(nit: "2222222222",
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
				def restaurant1 = new Restaurant(nit: "2222222223",
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
				def restaurant2 = new Restaurant(nit: "2222222224",
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
				
				def restaurant3 = new Restaurant(nit: "2222222252",
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
					name: "Cristian",
					lastname: "Campos",
					email: "campos_012@hotmail.com",
					phonenumber: "3132435599",
					gender: "Masculino",
					birthdate: new Date(),
					password: "12345678",
					role: "usuario"
					)
				user.save(failOnError: true)	
    }
    def destroy = {
    }
}
