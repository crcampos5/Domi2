package domi

class Recompoint {
	static belongsTo = [restaurante:Restaurant,usuario:User]
	
	
	Integer point = 0

    static constraints = {
		point inList:[0,1,2,3,4,5]
    }
	String toString(){
		point
	}
	
}
