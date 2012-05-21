package klipdriftpremiumdiski


class MobiUser {

    static constraints = {
        userId(blank: false, nullable: false)
        nickname()
        diskiName(nullable: true)
        points(blank: false, nullable: false)
        username(blank: false, nullable: false)
        mobileNumber(blank: false, nullable: false)
        emailAddress(email: true)
        campaignCode(blank: false, nullable: false)
    }

    String  userId,
            nickname,
            diskiName,
            username,
            mobileNumber,
            emailAddress,
            campaignCode

    int     points
}
