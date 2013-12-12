package domi



import org.junit.*
import grails.test.mixin.*

@TestFor(ProductosPedidoController)
@Mock(ProductosPedido)
class ProductosPedidoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/productosPedido/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.productosPedidoInstanceList.size() == 0
        assert model.productosPedidoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.productosPedidoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.productosPedidoInstance != null
        assert view == '/productosPedido/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/productosPedido/show/1'
        assert controller.flash.message != null
        assert ProductosPedido.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/productosPedido/list'

        populateValidParams(params)
        def productosPedido = new ProductosPedido(params)

        assert productosPedido.save() != null

        params.id = productosPedido.id

        def model = controller.show()

        assert model.productosPedidoInstance == productosPedido
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/productosPedido/list'

        populateValidParams(params)
        def productosPedido = new ProductosPedido(params)

        assert productosPedido.save() != null

        params.id = productosPedido.id

        def model = controller.edit()

        assert model.productosPedidoInstance == productosPedido
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/productosPedido/list'

        response.reset()

        populateValidParams(params)
        def productosPedido = new ProductosPedido(params)

        assert productosPedido.save() != null

        // test invalid parameters in update
        params.id = productosPedido.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/productosPedido/edit"
        assert model.productosPedidoInstance != null

        productosPedido.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/productosPedido/show/$productosPedido.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        productosPedido.clearErrors()

        populateValidParams(params)
        params.id = productosPedido.id
        params.version = -1
        controller.update()

        assert view == "/productosPedido/edit"
        assert model.productosPedidoInstance != null
        assert model.productosPedidoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/productosPedido/list'

        response.reset()

        populateValidParams(params)
        def productosPedido = new ProductosPedido(params)

        assert productosPedido.save() != null
        assert ProductosPedido.count() == 1

        params.id = productosPedido.id

        controller.delete()

        assert ProductosPedido.count() == 0
        assert ProductosPedido.get(productosPedido.id) == null
        assert response.redirectedUrl == '/productosPedido/list'
    }
}
