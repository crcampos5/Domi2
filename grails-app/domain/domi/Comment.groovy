package domi
//commit comment

class Comment {
	
	static belongTo = [usuario:User, restaurante:Restaurant]
	private static final NULL_DATE = new Date(0)
	
	Date date = NULL_DATE
	String text

    static constraints = {
		text black:false,size:2..250
    }
	def beforeInsert() {
		if (date == NULL_DATE) {
		   date = new Date()
		}
	 }
}
