package domi
//commit prueba

class Pedido {
	private static final Date NULL_DATE = new Date(0) 
	static belongsTo = [usuario:User]
	static hasMany = [productos:ProductosPedido]
	
	Date date = NULL_DATE
	float code
	float total

    static constraints = {
    }
	
	def beforeInsert() {
		if (date == NULL_DATE) {
		   date = new Date()
		}
	 }
}
