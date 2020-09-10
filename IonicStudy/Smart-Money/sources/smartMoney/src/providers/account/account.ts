import { Injectable } from '@angular/core';
import { EntryDaoProvider } from '../entry-dao/entry-dao';
import { CategoryDaoProvider } from '../category-dao/category-dao';
import { DatabaseProvider } from '../database/database';

@Injectable()
export class AccountProvider {
  private balance = 0;

  constructor(
    public entryDao: EntryDaoProvider,
    public categoryDao: CategoryDaoProvider) {
    
  }

  // Initial balance
  loadBalance() {
    console.log('load balance');

    return this.entryDao
      .getBalance()
        .then((balance) => {
          this.balance = Number(balance)
          return this.balance;
        })
  }

  // Tutorial page init
  init(amount) {
    console.log('account: init balance - ', amount);
    this.balance = amount;
    this.entryDao.deleteAll()
      .then(() => {
        this.entryDao.insert(amount, null, 'Saldo inicial.', null, null, null, null, null, 1);
      });
  }

  // ADD new entry
  addEntry(amount, categoryId, description = null, entryAt = null, latitude = 0, longitude = 0, address = null, image = null) {
    this.balance += Number(amount);

    return this.entryDao
      .insert(amount, categoryId, description, entryAt, latitude, longitude, address, image)
        .then(() => console.log('new entry added'));  
  }

  // Update Entry by ID
  updateEntry(id, amount, categoryId, description = null, entryAt = null, latitude = 0, longitude = 0, address = null, image = null) {
    return this.entryDao
      .update(amount, categoryId, description, entryAt, latitude, longitude, address, image, id)
        .then(() => {
          console.log('new entry updated')
          this.loadBalance();
        });  
  }

  // Delete Entry by ID
  deleteEntry(id) {
    return this.entryDao.delete(id)
      .then(() =>{
        console.log('new-entry: delete entry 0 - ', id);
        this.loadBalance();
      }); 
  }

  // Get entry ID
  getEntry(entryId) {
    return this.entryDao.get(entryId);
  }

  // Return actual balance
  currentBalance() {
    return this.balance;
  }

  // Return last entries
  allEntries(days) {
    return this.entryDao.getAll();
  }

  // Return all
  lastEntries(days, categories = []) {
    let criteria = 'entry_at >= ?';
    let data = [DatabaseProvider.now(days, true)]

    if (categories.length > 0) {
      let criteriaCategories = [];

      for(let categoryID of categories.map(item => item.id)) {
        criteriaCategories.push('category_id = ?');
        data.push(categoryID);
      }

      criteria += ` AND (${criteriaCategories.join(" OR ")})`;
    }

    console.log('lastEntries ', JSON.stringify(criteria));

    return this.entryDao.getAll(criteria, data);
  }

  // Date
  lastEntriesByDate(days, categories = []) {
    let criteria = 'entry_at >= ?';
    let data = [DatabaseProvider.now(days, true)]

    if (categories.length > 0) {
      let criteriaCategories = [];

      for(let categoryID of categories.map(item => item.id)) {
        criteriaCategories.push('category_id = ?');
        data.push(categoryID);
      }

      criteria += ` AND (${criteriaCategories.join(" OR ")})`;
    }

    console.log('lastEntriesByDate ', JSON.stringify(criteria));

    return this.entryDao
      .getByDate(criteria, data);
  }

    // Last
    lastEntriesByCategory(days, categories = []) {
      let criteria = 'entry_at >= ?';
      let data = [DatabaseProvider.now(days, true)]
  
      if (categories.length > 0) {
        let criteriaCategories = [];
  
        for(let categoryID of categories.map(item => item.id)) {
          criteriaCategories.push('category_id = ?');
          data.push(categoryID);
        }
  
        criteria += ` AND (${criteriaCategories.join(" OR ")})`;
      }
  
      console.log('lastEntriesByCategory ', JSON.stringify(criteria));
  
      return this.entryDao.getByCategory(criteria, data);
    }

  // Del DB
  dropBd() {
    this.entryDao.getDb();
  }

}
