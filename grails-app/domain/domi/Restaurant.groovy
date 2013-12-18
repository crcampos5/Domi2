package domi
//Cristian Campos
class Restaurant extends Usuario{
	
	static hasMany = [products: Product, comentarios:Comment]
	
	
	String nit
	String name
	String description
	String logo
	String email
	String web
	String fanpage
	//String password
	String direccion
	//String role = "restaurant"
	

    static constraints = {
		nit size:10..24, unique:true
		name black:false
		email email:true
		//password password:true, size: 8..25,black:false,nullable:false
    }
	
	String toString(){
		name
	}
}
