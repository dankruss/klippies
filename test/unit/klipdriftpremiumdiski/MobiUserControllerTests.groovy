package klipdriftpremiumdiski



import org.junit.*
import grails.test.mixin.*

@TestFor(MobiUserController)
@Mock(MobiUser)
class MobiUserControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/mobiUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.mobiUserInstanceList.size() == 0
        assert model.mobiUserInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.mobiUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.mobiUserInstance != null
        assert view == '/mobiUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/mobiUser/show/1'
        assert controller.flash.message != null
        assert MobiUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/mobiUser/list'


        populateValidParams(params)
        def mobiUser = new MobiUser(params)

        assert mobiUser.save() != null

        params.id = mobiUser.id

        def model = controller.show()

        assert model.mobiUserInstance == mobiUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/mobiUser/list'


        populateValidParams(params)
        def mobiUser = new MobiUser(params)

        assert mobiUser.save() != null

        params.id = mobiUser.id

        def model = controller.edit()

        assert model.mobiUserInstance == mobiUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/mobiUser/list'

        response.reset()


        populateValidParams(params)
        def mobiUser = new MobiUser(params)

        assert mobiUser.save() != null

        // test invalid parameters in update
        params.id = mobiUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/mobiUser/edit"
        assert model.mobiUserInstance != null

        mobiUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/mobiUser/show/$mobiUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        mobiUser.clearErrors()

        populateValidParams(params)
        params.id = mobiUser.id
        params.version = -1
        controller.update()

        assert view == "/mobiUser/edit"
        assert model.mobiUserInstance != null
        assert model.mobiUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/mobiUser/list'

        response.reset()

        populateValidParams(params)
        def mobiUser = new MobiUser(params)

        assert mobiUser.save() != null
        assert MobiUser.count() == 1

        params.id = mobiUser.id

        controller.delete()

        assert MobiUser.count() == 0
        assert MobiUser.get(mobiUser.id) == null
        assert response.redirectedUrl == '/mobiUser/list'
    }
}
