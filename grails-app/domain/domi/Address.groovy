package domi
// 
class Address {
	
	static belongsTo = [direccion:User]
	
	String streettype
	String streetnumber
	String numberone
	String numbertwo
	String barrio
	String city = "Bogota"

    static constraints = {
		streettype inList:["Calle","Carrera","Avenida","Transversal","Diagonal"],black:false
		streetnumber black:false
		numberone black:false
		numbertwo black:false
    }
	
	String toString(){
		streettype+" "+streetnumber+" "+numberone+" "+numbertwo
	}
}
