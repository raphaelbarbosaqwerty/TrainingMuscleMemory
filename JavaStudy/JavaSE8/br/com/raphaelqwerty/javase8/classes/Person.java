package br.com.raphaelqwerty.javase8.classes; //First of a class

class Person {

    String firstname;
    String lastname;

    Person(String firstname, String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public String getFullName() {
        return this.firstname + this.lastname;
    }
}