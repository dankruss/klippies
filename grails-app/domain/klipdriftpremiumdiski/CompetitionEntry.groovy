package klipdriftpremiumdiski


class CompetitionEntry {

    static constraints = {
        competition(blank: false, nullable: false)
        firstName(blank: false, nullable: false)
        diskiName(nullable: true)
        lastName(blank: false, nullable: false)
        gender(blank: false, nullable: false)
        mobileNumber(blank: false, nullable: false)
        emailAddress(email: true)
        region(blank: false, nullable: false)
        origin(blank: false, nullable: false)
        date()
    }

    String  competition,
            firstName,
            diskiName,
            lastName,
            gender,
            mobileNumber,
            emailAddress,
            region,
            origin,
            date

}
