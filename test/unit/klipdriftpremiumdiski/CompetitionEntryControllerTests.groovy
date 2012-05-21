package klipdriftpremiumdiski



import org.junit.*
import grails.test.mixin.*

@TestFor(CompetitionEntryController)
@Mock(CompetitionEntry)
class CompetitionEntryControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/competitionEntry/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.competitionEntryInstanceList.size() == 0
        assert model.competitionEntryInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.competitionEntryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.competitionEntryInstance != null
        assert view == '/competitionEntry/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/competitionEntry/show/1'
        assert controller.flash.message != null
        assert CompetitionEntry.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/competitionEntry/list'


        populateValidParams(params)
        def competitionEntry = new CompetitionEntry(params)

        assert competitionEntry.save() != null

        params.id = competitionEntry.id

        def model = controller.show()

        assert model.competitionEntryInstance == competitionEntry
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/competitionEntry/list'


        populateValidParams(params)
        def competitionEntry = new CompetitionEntry(params)

        assert competitionEntry.save() != null

        params.id = competitionEntry.id

        def model = controller.edit()

        assert model.competitionEntryInstance == competitionEntry
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/competitionEntry/list'

        response.reset()


        populateValidParams(params)
        def competitionEntry = new CompetitionEntry(params)

        assert competitionEntry.save() != null

        // test invalid parameters in update
        params.id = competitionEntry.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/competitionEntry/edit"
        assert model.competitionEntryInstance != null

        competitionEntry.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/competitionEntry/show/$competitionEntry.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        competitionEntry.clearErrors()

        populateValidParams(params)
        params.id = competitionEntry.id
        params.version = -1
        controller.update()

        assert view == "/competitionEntry/edit"
        assert model.competitionEntryInstance != null
        assert model.competitionEntryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/competitionEntry/list'

        response.reset()

        populateValidParams(params)
        def competitionEntry = new CompetitionEntry(params)

        assert competitionEntry.save() != null
        assert CompetitionEntry.count() == 1

        params.id = competitionEntry.id

        controller.delete()

        assert CompetitionEntry.count() == 0
        assert CompetitionEntry.get(competitionEntry.id) == null
        assert response.redirectedUrl == '/competitionEntry/list'
    }
}
