package br.com.raphaelqwerty.bookstore;

public class Author {

    String name;
    String email;
    String documentation;

    public void showDetails() {
        System.out.println("Showing author details ");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Doc: " + documentation);
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDocumentation() {
        return documentation;
    }

    public void setDocumentation(String documentation) {
        this.documentation = documentation;
    }
}