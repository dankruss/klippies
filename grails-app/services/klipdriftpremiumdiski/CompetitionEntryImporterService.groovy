package klipdriftpremiumdiski

class CompetitionEntryImporterService {

    def serviceMethod() {

    }

    def importFromCSV(String fileName){
        def temp = new CompetitionEntry()

        new File(fileName).splitEachLine(','){ fields ->
            temp.competition = fields[0]
            temp.firstName = fields[1]
            temp.lastName = fields[2]
            temp.gender = fields[3]
            temp.mobileNumber = fields[4]
            temp.emailAddress = fields[5]
            temp.region = fields[6]
            temp.origin = fields[7]
            temp.date = (Date)fields[8]

            temp.save()
        }


    }


}



/*
Competition	First Name	Last Name	Gender	Mobile Number	Email Address	Region	Origin	Date
*/