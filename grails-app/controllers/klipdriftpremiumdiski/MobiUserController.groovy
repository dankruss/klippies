package klipdriftpremiumdiski

import org.springframework.dao.DataIntegrityViolationException

class MobiUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [mobiUserInstanceList: MobiUser.list(params), mobiUserInstanceTotal: MobiUser.count()]
    }

    def create() {
        [mobiUserInstance: new MobiUser(params)]
    }

    def save() {
        def mobiUserInstance = new MobiUser(params)
        if (!mobiUserInstance.save(flush: true)) {
            render(view: "create", model: [mobiUserInstance: mobiUserInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), mobiUserInstance.id])
        redirect(action: "show", id: mobiUserInstance.id)
    }

    def show() {
        def mobiUserInstance = MobiUser.get(params.id)
        if (!mobiUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "list")
            return
        }

        [mobiUserInstance: mobiUserInstance]
    }

    def edit() {
        def mobiUserInstance = MobiUser.get(params.id)
        if (!mobiUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "list")
            return
        }

        [mobiUserInstance: mobiUserInstance]
    }

    def update() {
        def mobiUserInstance = MobiUser.get(params.id)
        if (!mobiUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (mobiUserInstance.version > version) {
                mobiUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'mobiUser.label', default: 'MobiUser')] as Object[],
                          "Another user has updated this MobiUser while you were editing")
                render(view: "edit", model: [mobiUserInstance: mobiUserInstance])
                return
            }
        }

        mobiUserInstance.properties = params

        if (!mobiUserInstance.save(flush: true)) {
            render(view: "edit", model: [mobiUserInstance: mobiUserInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), mobiUserInstance.id])
        redirect(action: "show", id: mobiUserInstance.id)
    }

    def delete() {
        def mobiUserInstance = MobiUser.get(params.id)
        if (!mobiUserInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "list")
            return
        }

        try {
            mobiUserInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'mobiUser.label', default: 'MobiUser'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def importer(){

    }

    def importCSV(){
        def importer = new MobiUserImporterService()
        importer.importFromCSV(params.file)
        redirect(action: "list")
    }
}
