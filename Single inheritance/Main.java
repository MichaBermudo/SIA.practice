// Super class
class Subject {

    Subject() {
        System.out.println("This is a Subject");
    }
}
D
// Subclass
class Programming extends Subject {

    Programming() {
        System.out.println("This Subject is Programming");
    }
}

// Test class
public class Main {

    public static void main(String[] args) {

        Programming obj = new Programming();
    }
}