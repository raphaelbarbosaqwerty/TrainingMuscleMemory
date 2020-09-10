import { Injectable } from '@angular/core';
import { SQLite, SQLiteObject } from '@ionic-native/sqlite';

@Injectable()
export class DatabaseProvider {
  private dbConnection: SQLiteObject;

  constructor(
    public sqlite: SQLite) {
    this.initDB(); // Call the func.
  }

  static now(days = 0, midnight = false) {
    // isn't working in this SQLITE due locale

    const date = new Date();
    let dd, mm, y, h, m, s;

    if (days != 0) {
      let newDate = new Date(date);
      newDate.setDate(newDate.getDate() + days);

      dd = newDate.getDate();
      mm = newDate.getMonth() + 1;
      y = newDate.getFullYear();
      h = newDate.getHours();
      m = newDate.getMinutes();
      s = newDate.getSeconds();
    }
    else {
      dd = date.getDate();
      mm = date.getMonth() + 1;
      y = date.getFullYear();
      h = date.getHours();
      m = date.getMinutes();
      s = date.getSeconds();
    }

    if(midnight) {
      h = 0;
      m = 0;
      s = 0;
    }

    let res = [
      '' + y,
      ('0' + mm).slice(-2),
      ('0' + dd).slice(-2),
      ('0' + h).slice(-2),
      ('0' + m).slice(-2),
      ('0' + s).slice(-2)
    ];

    return res.slice(0, 3).join('-') + ' ' + res.slice(3).join(':');
  }

  static date2bd(date) {
    const dd = date.getDate();
    const mm = date.getMonth() + 1;
    const y = date.getFullYear();
    const h = date.getHours();
    const m = date.getMinutes();
    const s = date.getSeconds();

    let res = [
      '' + y,
      ('0' + mm).slice(-2),
      ('0' + dd).slice(-2),
      ('0' + h).slice(-2),
      ('0' + m).slice(-2),
      ('0' + s).slice(-2)
    ];

    return res.slice(0, 3).join('-') + ' ' + res.slice(3).join(':');
  }
  
  // to Export get
  get db(): SQLiteObject {
    return this.dbConnection;
  }

  // Start DB
  private initDB() {
    console.log('init db');

    this.sqlite.create({
      name: 'data.db',
      location: 'default'
    })
    .then((db: SQLiteObject) => {
      this.dbConnection = db;

      // Call functions on device
      this.createTables();
      //this.dropTables();
      this.loadRecords();
    })
    .catch(e => console.error('error on load db', JSON.stringify(e)));
  }

  // Create Tables
  private createTables() {
    console.log('creating tables...');

    this.dbConnection.sqlBatch([
      ["CREATE TABLE IF NOT EXISTS categories(id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(255) NOT NULL, color CHARACTER(11) DEFAULT '255,255,255', is_default INTEGER, is_credit INTEGER DEFAULT 0, is_debit INTEGER DEFAULT 0);"],
      ["CREATE TABLE IF NOT EXISTS entries(id INTEGER PRIMARY KEY AUTOINCREMENT, amount DECIMAL NOT NULL, description TEXT, entry_at DATETIME NOT NULL, latitude FLOAT, longitude FLOAT, address VARCHAR(255), image VARCHAR(255), is_init INTEGER, category_id INTEGER);"],
    ])
    .then(() => console.log('tables created successfully'))
    .catch(e => console.error('error on create tables', JSON.stringify(e)));
  }

  // Loading default data
  private loadRecords() {
    console.log('loading default data...');

    this.dbConnection.executeSql('SELECT COUNT(id) AS qtd FROM categories', [])
      .then((data: any) => {
        console.log('categories in db', data.rows.item(0).qtd);

        //  check for 0 register
        if (data.rows.item(0).qtd == 0) {

          // Populating initial tables
          this.dbConnection.sqlBatch([
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Dívidas e Empréstimos', '#1abc9c', 1]],   // turquese
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Restaurantes e Bares', '#2ecc71', 1]],   // green
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Investimentos', '#3498db', 1]],                   // blue
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Alimentação', '#9b59b6', 1]],                // violet
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Educação', '#f39c12', 1]],  // yellow-dark
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Passagem', '#f1c40f', 1]],  // Yellow
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Compras', '#e67e22', 1]],               // orange
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Família', '#d35400', 1]],       // orange-dark
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Mercado', '#c0392b', 1]],          // red-dark
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Outros', '#ecf0f1', 1]],                  // champagne
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Lazer', '#bdc3c7', 1]],                // champagne-dark
            ['INSERT INTO categories (name, color, is_debit) values (?, ?, ?)', ['Casa', '#95a5a6', 1]],        // metal

            ['INSERT INTO categories (name, color, is_credit) values (?, ?, ?)', ['Investimentos', '#273c75', 1]],           // blue marine
            ['INSERT INTO categories (name, color, is_credit) values (?, ?, ?)', ['Empréstimos', '#4cd137', 1]],         // green-sea
            ['INSERT INTO categories (name, color, is_credit) values (?, ?, ?)', ['Salário', '#487eb0', 1]],               // seabrook
            ['INSERT INTO categories (name, color, is_credit) values (?, ?, ?)', ['Outros', '#8c7ae6', 1]],       // matt purple
          ])
          .then(() => console.log('default categories added'))
          .catch(e => console.error('error on create default categories', JSON.stringify(e)));
        }
      })
      .catch(e => console.error('error on get categories quantity', JSON.stringify(e)));
  }
}
