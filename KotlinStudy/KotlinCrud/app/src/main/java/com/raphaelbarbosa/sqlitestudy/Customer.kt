package com.raphaelbarbosa.sqlitestudy

class Customer {
    var id: Int = 0
    var userName: String? = null
    var userAge: Int? = null
    var userPhone: String? = null
    var userActive: String? = null

    constructor(id: Int, userName: String, userAge: Int, userPhone: String, userActive: String) {
        this.id = id
        this.userName = userName
        this.userAge = userAge
        this.userPhone = userPhone
        this.userActive = userActive
    }

    constructor(userName: String, userAge: Int, userPhone: String, userActive: String) {
        this.userName = userName
        this.userAge = userAge
        this.userPhone = userPhone
        this.userActive = userActive

    }
}