public class BankAccount {

    // MEMBER VARIABLES
    private double checkingBalance;
    private double savingsBalance;
    private static int totalAccounts = 0;
    private static double lotsOfMoney= 0.0;

// CONSTRUCTOR
    public BankAccount(){
        checkingBalance = 0.0;
        savingsBalance = 0.0;
        totalAccounts++;
    }

    // GETTERS PUBLIC
    public double getChecking(){
        return checkingBalance;
    }

    public double getSavings(){
        return savingsBalance;
    }
    public double getAll(){
        return this.getChecking() + this.getSavings();
    }


    // GETTERS STATIC
    public static int getTotalAccounts(){
        return totalAccounts;
    }

    public static double getLotsOfMoney(){
        return lotsOfMoney;
    }



    // SETTERS 
    public void setChecking(double amount) {
        this.checkingBalance += amount;
        lotsOfMoney += amount;
    }
    public void setSavings(double amount) {
        this.savingsBalance += amount;
        lotsOfMoney += amount;
    }



    // METHOD
    public void depositChecking(double amount){
        this.setChecking(getChecking() + amount);

    }
    public void depositSavings(double amount){
        this.setSavings(getSavings() + amount);

    }
    public void withdrawChecking(double amount){
        this.setChecking(getChecking() - amount);

    }
    public void withdrawSavings(double amount){
        this.setSavings(getSavings() - amount);

    }
}