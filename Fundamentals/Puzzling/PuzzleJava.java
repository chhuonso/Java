import java.util.ArrayList;
import java.util.Random;

public class PuzzleJava {

    public ArrayList<Integer> getTenRolls(){

        Random randomInt = new Random();

        ArrayList<Integer> randomTen = new ArrayList<Integer>();
        for(int i = 1; i< 10; i++){
            randomTen.add(randomInt.nextInt(20)+ 1);
        }
        return randomTen;
    }

    public String genRandomLetter(){
        Random rand = new Random();
        String alphabetString = "abcdefghijklmnopqrstuvwxyz";
        char randomChar = alphabetString.charAt(rand.nextInt(26));
        return String.valueOf(randomChar);
    }

    public String genRandomPassword(){
        String password = "";
        for(int i = 0; i < 10; i++){
            password = password + genRandomLetter();
        }
        return password;
    }


    public ArrayList<String> genRandomNewPasswordSet(int lenght){

        ArrayList<String> passwordSet = new ArrayList<String>();
        for(int i = 0; i <  lenght; i++){
        passwordSet.add(genRandomPassword());
        }
        return passwordSet;
    }
}

