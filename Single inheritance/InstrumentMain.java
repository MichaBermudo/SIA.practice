// Super class
class Instrument {

    Instrument() {
        System.out.println("This is a Musical Instrument");
    }
}

// Subclass
class Guitar extends Instrument {

    Guitar() {
        System.out.println("This Musical Instrument is a Guitar");
    }
}

// Test class
public class InstrumentMain {

    public static void main(String[] args) {

        Guitar obj = new Guitar();
    }
}