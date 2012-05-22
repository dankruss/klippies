package klipdriftpremiumdiski

class CSVBuilderService {

    def serviceMethod() {

    }

    def buildCSV(List dataSet, String version){
        String output = ''


        dataSet.each {
            def row = []

            if (version == 'CompetitionEntry'){
                 row = [it.competition, it.firstName, it.diskiName, it.lastName, it.gender, it.mobileNumber, it.emailAddress, it.region, it.origin, it.date]
            }  else {
                 row = [it.userId, it.nickname, it.diskiName, it.points, it.username, it.mobileNumber, it.emailAddress, it.campaignCode]
            }

            output = output + row.join(',')
            output = output + '\n'

        }
        return output

    }
}

