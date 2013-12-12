package domi
// Cristian Campos
class ProductosPedido {
	static belongsTo = [pedido:Pedido]
	static hasMany = [productos:Product]
	
	Integer cantidad

    static constraints = {
    }
}
