package br.com.raphaelqwerty.school.Class;

import br.com.raphaelqwerty.school.Tests.SchoolTests;
import java.lang.String;

public class Students {

    private String name;
    private double examNote;
    private SchoolTests schoolTests;

    public Students(SchoolTests schoolTests) {
        this.schoolTests = schoolTests;
    }

    public void showDetails() {
        schoolTests.showDetails();
        System.out.println("Note from "+name+" is: "+examNote+"\n");

    }

    public void setName(String name) {
        this.name = name;
    }

    public void setExamNote(double examNote) {
        this.examNote = examNote;
    }


}
