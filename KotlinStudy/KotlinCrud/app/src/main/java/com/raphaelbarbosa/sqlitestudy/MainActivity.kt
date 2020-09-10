package com.raphaelbarbosa.sqlitestudy

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ArrayAdapter
import android.widget.Spinner
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_main.*
import android.widget.AdapterView



class MainActivity : AppCompatActivity() {

    internal lateinit var options : Spinner


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        options = findViewById(R.id.etActive) as Spinner
        val option = arrayOf("Selecione","Sim", "Não")
        val adapter = ArrayAdapter(this, android.R.layout.simple_list_item_1, option)
        options.adapter = adapter



        btnAddToDb.setOnClickListener {
            val dbHandler = ConnectionDBOpenHelper(this, null)


            options.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
                override fun onNothingSelected(parent: AdapterView<*>?) {
                    tvDisplayActive.text = "Nada selecionado"
                }

                override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
                    val username = etName.text.toString()
                    val userage = etAge.text.toString().toInt()
                    val userphone = etNumber.text.toString()
                    val useractive = parent?.getItemAtPosition(position).toString()
                    dbHandler.addCustomer(Customer(username, userage, userphone, useractive))
                }
            }

            Toast.makeText(this, etName.text.toString() + " Added to database", Toast.LENGTH_LONG).show()
        }

        btnShowDatafromDb.setOnClickListener {
            tvDisplayName.text = ""
            tvDisplayAge.text = ""
            tvDisplayPhone.text = ""
            tvDisplayCreated.text = ""
            tvDisplayActive.text = ""

            val dbHandler = ConnectionDBOpenHelper(this, null)
            val cursor = dbHandler.getAllName()
            if(cursor != null ) {
                cursor!!.moveToFirst()

                tvDisplayName.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_NAME)))+"\n")
                tvDisplayAge.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_AGE)))+"\n")
                tvDisplayPhone.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_PHONE)))+"\n")
                tvDisplayCreated.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_CREATED)))+"\n")
                tvDisplayActive.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_ACTIVE)))+"\n")

                while (cursor.moveToNext()) {
                    tvDisplayName.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_NAME)))+"\n")
                    tvDisplayAge.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_AGE)))+"\n")
                    tvDisplayPhone.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_PHONE)))+"\n")
                    tvDisplayCreated.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_CREATED)))+"\n")
                    tvDisplayActive.append((cursor.getString(cursor.getColumnIndex(ConnectionDBOpenHelper.COLUMN_ACTIVE)))+"\n")
                }

                cursor.close()
            } else {
                tvDisplayActive.text = "Está vazio."
            }


        }
    }
}
