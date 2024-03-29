package klipdriftpremiumdiski

import org.springframework.web.multipart.commons.CommonsMultipartFile

class MobiUserImporterService {

    def serviceMethod() {

    }

    def importFromCSV(CommonsMultipartFile fileSent){
        def file = new File('temp')
        fileSent.transferTo(file)
        def duplicates = 0


        file.splitEachLine(','){ fields ->


            def nickname = (fields[1] != null)? fields[1].replaceAll("\"", "") :  ''


            def temp = new MobiUser(
                    userId:         fields[0].replaceAll("\"", ""),
                    nickname:       nickname,
                    points:         fields[2].replaceAll("\"", ""),
                    username:       fields[3].replaceAll("\"", ""),
                    mobileNumber:   fields[4].replaceAll("\"", ""),
                    emailAddress:   fields[5].replaceAll("\"", ""),
                    campaignCode:   fields[6].replaceAll("\"", "")
            )

            if (MobiUser.findAllByEmailAddress(fields[5]).size()<1){
                temp.save()
            } else {
                duplicates ++
            }

        }
        System.out.println ("There were " + duplicates + " duplicates")

//        userId(blank: false, nullable: false)
//        nickname()
//        diskiName(nullable: true)
//        points(blank: false, nullable: false)
//        username(blank: false, nullable: false)
//        mobileNumber(blank: false, nullable: false)
//        emailAddress(email: true)
//        campaignCode(blank: false, nullable: false)


    }
}
