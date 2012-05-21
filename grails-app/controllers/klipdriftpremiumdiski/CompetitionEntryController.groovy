package klipdriftpremiumdiski

import org.springframework.dao.DataIntegrityViolationException

class CompetitionEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [competitionEntryInstanceList: CompetitionEntry.list(params), competitionEntryInstanceTotal: CompetitionEntry.count()]
    }

    def create() {
        [competitionEntryInstance: new CompetitionEntry(params)]
    }

    def save() {
        def competitionEntryInstance = new CompetitionEntry(params)
        if (!competitionEntryInstance.save(flush: true)) {
            render(view: "create", model: [competitionEntryInstance: competitionEntryInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), competitionEntryInstance.id])
        redirect(action: "show", id: competitionEntryInstance.id)
    }

    def show() {
        def competitionEntryInstance = CompetitionEntry.get(params.id)
        if (!competitionEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "list")
            return
        }

        [competitionEntryInstance: competitionEntryInstance]
    }

    def edit() {
        def competitionEntryInstance = CompetitionEntry.get(params.id)
        if (!competitionEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "list")
            return
        }

        [competitionEntryInstance: competitionEntryInstance]
    }

    def update() {
        def competitionEntryInstance = CompetitionEntry.get(params.id)
        if (!competitionEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (competitionEntryInstance.version > version) {
                competitionEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'competitionEntry.label', default: 'CompetitionEntry')] as Object[],
                          "Another user has updated this CompetitionEntry while you were editing")
                render(view: "edit", model: [competitionEntryInstance: competitionEntryInstance])
                return
            }
        }

        competitionEntryInstance.properties = params

        if (!competitionEntryInstance.save(flush: true)) {
            render(view: "edit", model: [competitionEntryInstance: competitionEntryInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), competitionEntryInstance.id])
        redirect(action: "show", id: competitionEntryInstance.id)
    }

    def delete() {
        def competitionEntryInstance = CompetitionEntry.get(params.id)
        if (!competitionEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "list")
            return
        }

        try {
            competitionEntryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'competitionEntry.label', default: 'CompetitionEntry'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def importCSV(){
        def importer = new CompetitionEntryImporterService()
        importer.importFromCSV(params.file)
        redirect(action: "list")
    }


}
