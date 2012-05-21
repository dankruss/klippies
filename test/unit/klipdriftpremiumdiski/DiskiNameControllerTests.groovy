package klipdriftpremiumdiski



import org.junit.*
import grails.test.mixin.*

@TestFor(DiskiNameController)
@Mock(DiskiName)
class DiskiNameControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/diskiName/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.diskiNameInstanceList.size() == 0
        assert model.diskiNameInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.diskiNameInstance != null
    }

    void testSave() {
        controller.save()

        assert model.diskiNameInstance != null
        assert view == '/diskiName/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/diskiName/show/1'
        assert controller.flash.message != null
        assert DiskiName.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/diskiName/list'


        populateValidParams(params)
        def diskiName = new DiskiName(params)

        assert diskiName.save() != null

        params.id = diskiName.id

        def model = controller.show()

        assert model.diskiNameInstance == diskiName
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/diskiName/list'


        populateValidParams(params)
        def diskiName = new DiskiName(params)

        assert diskiName.save() != null

        params.id = diskiName.id

        def model = controller.edit()

        assert model.diskiNameInstance == diskiName
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/diskiName/list'

        response.reset()


        populateValidParams(params)
        def diskiName = new DiskiName(params)

        assert diskiName.save() != null

        // test invalid parameters in update
        params.id = diskiName.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/diskiName/edit"
        assert model.diskiNameInstance != null

        diskiName.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/diskiName/show/$diskiName.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        diskiName.clearErrors()

        populateValidParams(params)
        params.id = diskiName.id
        params.version = -1
        controller.update()

        assert view == "/diskiName/edit"
        assert model.diskiNameInstance != null
        assert model.diskiNameInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/diskiName/list'

        response.reset()

        populateValidParams(params)
        def diskiName = new DiskiName(params)

        assert diskiName.save() != null
        assert DiskiName.count() == 1

        params.id = diskiName.id

        controller.delete()

        assert DiskiName.count() == 0
        assert DiskiName.get(diskiName.id) == null
        assert response.redirectedUrl == '/diskiName/list'
    }
}
