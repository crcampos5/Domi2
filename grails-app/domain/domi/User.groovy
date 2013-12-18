package domi
// comentario en user
class User extends Usuario{
	
	static hasMany = [ direcciones:Address,pedidos: Pedido]
 	
	String name
	String lastname
	String email
	String phonenumber
	String gender
	Date   birthdate 
	//String password
	//String role

	
    static constraints = {
		name size: 3..45, black:false
		lastname size:3..45, black:false
		email email:true, black:false, unique:true
		phonenumber size:7..10
		gender inList:["Masculino","Femenino"]
		//password password:true, size: 8..25, black:false
		//role inlist:["usuario","admin"]
		
    }
	
	String toString(){
		name
	}
}
