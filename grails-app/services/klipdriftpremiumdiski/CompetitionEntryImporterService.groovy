package klipdriftpremiumdiski

import org.springframework.web.multipart.commons.CommonsMultipartFile

class CompetitionEntryImporterService {

    def serviceMethod() {

    }

    def importFromCSV(CommonsMultipartFile fileSent){
        def file = new File('temp')
        fileSent.transferTo(file)
        def duplicates = 0



        file.splitEachLine(','){ fields ->
            def temp = new CompetitionEntry(

                    competition:fields[0],
                    firstName:fields[1],
                    lastName:fields[2],
                    gender:fields[3],
                    mobileNumber:fields[4],
                    emailAddress:fields[5],
                    region:fields[6],
                    origin:fields[7],
                    date: fields[8]

                    )

            if (CompetitionEntry.findAllByEmailAddress(fields[5]).size()<1){
                temp.save()
            } else {
               duplicates++
            }
        }

        System.out.println ("There were " + duplicates + " duplicates")


    }


}



/*
Competition	First Name	Last Name	Gender	Mobile Number	Email Address	Region	Origin	Date
*/