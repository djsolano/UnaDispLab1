package universidad



import org.junit.*
import grails.test.mixin.*

@TestFor(CicloController)
@Mock(Ciclo)
class CicloControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ciclo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cicloInstanceList.size() == 0
        assert model.cicloInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cicloInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cicloInstance != null
        assert view == '/ciclo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ciclo/show/1'
        assert controller.flash.message != null
        assert Ciclo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ciclo/list'

        populateValidParams(params)
        def ciclo = new Ciclo(params)

        assert ciclo.save() != null

        params.id = ciclo.id

        def model = controller.show()

        assert model.cicloInstance == ciclo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ciclo/list'

        populateValidParams(params)
        def ciclo = new Ciclo(params)

        assert ciclo.save() != null

        params.id = ciclo.id

        def model = controller.edit()

        assert model.cicloInstance == ciclo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ciclo/list'

        response.reset()

        populateValidParams(params)
        def ciclo = new Ciclo(params)

        assert ciclo.save() != null

        // test invalid parameters in update
        params.id = ciclo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ciclo/edit"
        assert model.cicloInstance != null

        ciclo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ciclo/show/$ciclo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ciclo.clearErrors()

        populateValidParams(params)
        params.id = ciclo.id
        params.version = -1
        controller.update()

        assert view == "/ciclo/edit"
        assert model.cicloInstance != null
        assert model.cicloInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ciclo/list'

        response.reset()

        populateValidParams(params)
        def ciclo = new Ciclo(params)

        assert ciclo.save() != null
        assert Ciclo.count() == 1

        params.id = ciclo.id

        controller.delete()

        assert Ciclo.count() == 0
        assert Ciclo.get(ciclo.id) == null
        assert response.redirectedUrl == '/ciclo/list'
    }
}
