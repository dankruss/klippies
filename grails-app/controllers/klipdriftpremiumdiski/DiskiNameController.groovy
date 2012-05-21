package klipdriftpremiumdiski

import org.springframework.dao.DataIntegrityViolationException

class DiskiNameController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [diskiNameInstanceList: DiskiName.list(params), diskiNameInstanceTotal: DiskiName.count()]
    }

    def create() {
        [diskiNameInstance: new DiskiName(params)]
    }

    def save() {
        def diskiNameInstance = new DiskiName(params)
        if (!diskiNameInstance.save(flush: true)) {
            render(view: "create", model: [diskiNameInstance: diskiNameInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), diskiNameInstance.id])
        redirect(action: "show", id: diskiNameInstance.id)
    }

    def show() {
        def diskiNameInstance = DiskiName.get(params.id)
        if (!diskiNameInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "list")
            return
        }

        [diskiNameInstance: diskiNameInstance]
    }

    def edit() {
        def diskiNameInstance = DiskiName.get(params.id)
        if (!diskiNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "list")
            return
        }

        [diskiNameInstance: diskiNameInstance]
    }

    def update() {
        def diskiNameInstance = DiskiName.get(params.id)
        if (!diskiNameInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (diskiNameInstance.version > version) {
                diskiNameInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'diskiName.label', default: 'DiskiName')] as Object[],
                          "Another user has updated this DiskiName while you were editing")
                render(view: "edit", model: [diskiNameInstance: diskiNameInstance])
                return
            }
        }

        diskiNameInstance.properties = params

        if (!diskiNameInstance.save(flush: true)) {
            render(view: "edit", model: [diskiNameInstance: diskiNameInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), diskiNameInstance.id])
        redirect(action: "show", id: diskiNameInstance.id)
    }

    def delete() {
        def diskiNameInstance = DiskiName.get(params.id)
        if (!diskiNameInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "list")
            return
        }

        try {
            diskiNameInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'diskiName.label', default: 'DiskiName'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
