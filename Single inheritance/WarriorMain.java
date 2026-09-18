// Super class
class NovelCharacter {
    
    NovelCharacter() {
        System.out.println("This is a Novel Character");
    }
}

// Subclass
class Warrior extends NovelCharacter {
    
    Warrior() {
        System.out.println("This Novel Character is a Warrior");
    }
}

// Test class
public class WarriorMain {
    
    public static void main(String[] args) {
        
         Warrior obj = new Warrior();
    }
}