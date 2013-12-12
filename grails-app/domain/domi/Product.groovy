package domi
// Cristian Campos

class Product {
	
	static belongsTo = [restaurant: Restaurant]
	
	String name
	String description
	float price

    static constraints = {
		name size:5..45,black:false
		price black:false
    }
	
	String toString(){
		description
	}
}
