package br.com.raphaelqwerty.school.Tests;

import br.com.raphaelqwerty.school.Class.Students;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SchoolTests {

    private String nameTest;
    private Students students;
    private List questionsInTest = new ArrayList();

    public void showDetails() {
        System.out.println("Test name: " +nameTest);
        System.out.println("Questions:" +questionsInTest);
    }

    public void setNameTest(String nameTest) {
        this.nameTest = nameTest;
    }

    public void setQuestionsInTest(int questionsInTest) {
        this.questionsInTest = Collections.singletonList(questionsInTest);
    }

    public List getQuestionsInTest() {
        return questionsInTest;
    }



}
