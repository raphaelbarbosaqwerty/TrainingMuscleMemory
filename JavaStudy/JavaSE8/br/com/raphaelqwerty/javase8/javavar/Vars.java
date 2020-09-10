package br.com.raphaelqwerty.javase8.javavar;

public class Vars {
    
    String variableInstance;
    static int variableStatic = 10;
    public static void main(String[] args) {
        
        
    }

    public void setName(String n) {
        this.variableInstance = n;
    }

    public void localVar() {
        int myLocalVar = 10;
        System.out.println(myLocalVar);
    }

    public void localVarTwo() {
        int myLocalVar = 10;

        if (myLocalVar >= 10) {
            int myLocalVarTwo = 50;
            System.out.println(myLocalVarTwo);
        }
    }

}