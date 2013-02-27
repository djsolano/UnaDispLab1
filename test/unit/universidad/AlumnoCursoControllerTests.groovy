package universidad



import org.junit.*
import grails.test.mixin.*

@TestFor(AlumnoCursoController)
@Mock(AlumnoCurso)
class AlumnoCursoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/alumnoCurso/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.alumnoCursoInstanceList.size() == 0
        assert model.alumnoCursoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.alumnoCursoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.alumnoCursoInstance != null
        assert view == '/alumnoCurso/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/alumnoCurso/show/1'
        assert controller.flash.message != null
        assert AlumnoCurso.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/alumnoCurso/list'

        populateValidParams(params)
        def alumnoCurso = new AlumnoCurso(params)

        assert alumnoCurso.save() != null

        params.id = alumnoCurso.id

        def model = controller.show()

        assert model.alumnoCursoInstance == alumnoCurso
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/alumnoCurso/list'

        populateValidParams(params)
        def alumnoCurso = new AlumnoCurso(params)

        assert alumnoCurso.save() != null

        params.id = alumnoCurso.id

        def model = controller.edit()

        assert model.alumnoCursoInstance == alumnoCurso
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/alumnoCurso/list'

        response.reset()

        populateValidParams(params)
        def alumnoCurso = new AlumnoCurso(params)

        assert alumnoCurso.save() != null

        // test invalid parameters in update
        params.id = alumnoCurso.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/alumnoCurso/edit"
        assert model.alumnoCursoInstance != null

        alumnoCurso.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/alumnoCurso/show/$alumnoCurso.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        alumnoCurso.clearErrors()

        populateValidParams(params)
        params.id = alumnoCurso.id
        params.version = -1
        controller.update()

        assert view == "/alumnoCurso/edit"
        assert model.alumnoCursoInstance != null
        assert model.alumnoCursoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/alumnoCurso/list'

        response.reset()

        populateValidParams(params)
        def alumnoCurso = new AlumnoCurso(params)

        assert alumnoCurso.save() != null
        assert AlumnoCurso.count() == 1

        params.id = alumnoCurso.id

        controller.delete()

        assert AlumnoCurso.count() == 0
        assert AlumnoCurso.get(alumnoCurso.id) == null
        assert response.redirectedUrl == '/alumnoCurso/list'
    }
}
