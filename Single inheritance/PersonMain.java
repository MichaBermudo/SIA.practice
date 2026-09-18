//Superclass
class Person {
    void introduce() {
        System.out.println("I am a person.");
    }
}

//Subclass
class Student extends Person {
    void study() {
        System.out.println("I am studying.");
    }
}

//Main class
public class PersonMain {
     public static void main(String[] args) {
        Student student = new Student();

        student.introduce();
        student.study();
    }
}