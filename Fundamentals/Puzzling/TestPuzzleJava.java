import java.util.ArrayList;
import java.util.Random;

public class TestPuzzleJava {

    public static void main(String[] args){
        PuzzleJava generator = new PuzzleJava();
        ArrayList<Integer> randomRolls = generator.getTenRolls();
    System.out.println("*********** GENERATE TEN ROLLs ************");
        System.out.println(randomRolls);

    System.out.println("*********** GENERATE RANDOM LETTERS ************");
        System.out.println(generator.genRandomLetter());
    
    System.out.println("*********** GENERATE Random Password ************");
        System.out.println(generator.genRandomPassword());
    System.out.println("*********** GENERATE Random Password Set ************");
        System.out.println(generator.genRandomNewPasswordSet(7));
    }
}