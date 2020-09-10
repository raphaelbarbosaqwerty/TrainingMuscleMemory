package com.raphaelbarbosa.sqlitestudy

import android.content.ContentValues
import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

class ConnectionDBOpenHelper(context: Context,
                             factory: SQLiteDatabase.CursorFactory?) :
    SQLiteOpenHelper(context, DATABASE_NAME,
        factory, DATABASE_VERSION) {

    override fun onCreate(db: SQLiteDatabase) {
        val CREATE_PRODUCTS_TABLE = ("CREATE TABLE " +
                TABLE_CUSTOMER + " ("
                + COLUMN_ID + " INTEGER PRIMARY KEY, " +
                COLUMN_NAME + " TEXT, " +
                COLUMN_AGE + " INTEGER, " +
                COLUMN_PHONE + " TEXT, " +
                COLUMN_ACTIVE + " TEXT, " +
                COLUMN_CREATED + " DATETIME DEFAULT CURRENT_DATE"
                + ")")
        db.execSQL(CREATE_PRODUCTS_TABLE)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_CUSTOMER)
        onCreate(db)
    }

    fun addCustomer(customer: Customer) {
        val values = ContentValues()

        values.put(COLUMN_NAME, customer.userName)
        values.put(COLUMN_AGE, customer.userAge)
        values.put(COLUMN_PHONE, customer.userPhone)
        values.put(COLUMN_ACTIVE, customer.userActive)

        val db = this.writableDatabase

        db.insert(TABLE_CUSTOMER, null, values)
        db.close()
    }

    fun getAllName(): Cursor? {
        val db = this.readableDatabase
        return db.rawQuery("SELECT * FROM $TABLE_CUSTOMER", null)
    }

    companion object {
        private val DATABASE_VERSION = 1
        private val DATABASE_NAME = "study.db"
        val TABLE_CUSTOMER = "customers"
        val COLUMN_ID = "_id"
        val COLUMN_NAME = "username"
        val COLUMN_AGE = "userage"
        val COLUMN_PHONE = "userphone"
        val COLUMN_ACTIVE = "useractive"
        val COLUMN_CREATED = "usercreated"
    }
}