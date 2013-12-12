package domi



import org.junit.*
import grails.test.mixin.*

@TestFor(RecompointController)
@Mock(Recompoint)
class RecompointControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/recompoint/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.recompointInstanceList.size() == 0
        assert model.recompointInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.recompointInstance != null
    }

    void testSave() {
        controller.save()

        assert model.recompointInstance != null
        assert view == '/recompoint/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/recompoint/show/1'
        assert controller.flash.message != null
        assert Recompoint.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/recompoint/list'

        populateValidParams(params)
        def recompoint = new Recompoint(params)

        assert recompoint.save() != null

        params.id = recompoint.id

        def model = controller.show()

        assert model.recompointInstance == recompoint
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/recompoint/list'

        populateValidParams(params)
        def recompoint = new Recompoint(params)

        assert recompoint.save() != null

        params.id = recompoint.id

        def model = controller.edit()

        assert model.recompointInstance == recompoint
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/recompoint/list'

        response.reset()

        populateValidParams(params)
        def recompoint = new Recompoint(params)

        assert recompoint.save() != null

        // test invalid parameters in update
        params.id = recompoint.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/recompoint/edit"
        assert model.recompointInstance != null

        recompoint.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/recompoint/show/$recompoint.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        recompoint.clearErrors()

        populateValidParams(params)
        params.id = recompoint.id
        params.version = -1
        controller.update()

        assert view == "/recompoint/edit"
        assert model.recompointInstance != null
        assert model.recompointInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/recompoint/list'

        response.reset()

        populateValidParams(params)
        def recompoint = new Recompoint(params)

        assert recompoint.save() != null
        assert Recompoint.count() == 1

        params.id = recompoint.id

        controller.delete()

        assert Recompoint.count() == 0
        assert Recompoint.get(recompoint.id) == null
        assert response.redirectedUrl == '/recompoint/list'
    }
}
