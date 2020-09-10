package br.com.raphaelqwerty.school;

import br.com.raphaelqwerty.school.Class.Students;
import br.com.raphaelqwerty.school.Tests.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Main {

    public static void main(String[] args) {

        SchoolTests test = new SchoolTests();
        test.setNameTest("Exam end of the year");
        test.setQuestionsInTest(10);

        SchoolTests newExam = new SchoolTests();
        newExam.setNameTest("Exam to recover the last exam!");

        Students naruto = new Students(test);
        naruto.setName("Naruto");
        naruto.setExamNote(6.0);
        naruto.showDetails();

        Students sasuke = new Students(test);
        sasuke.setName("Sasuke");
        sasuke.setExamNote(8.0);
        sasuke.showDetails();

        Students sakura = new Students(test);
        sakura.setName("Sakura");
        sakura.setExamNote(9.0);
        sakura.showDetails();
        
    }
}
