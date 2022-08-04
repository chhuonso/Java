public class BankAccountTest{
    public static void main(String[] args){
        BankAccount laceBank = new BankAccount();

        laceBank.depositChecking(1000);

        System.out.println(laceBank.getChecking());

        System.out.printf("DEPOSIT $%.2f\n",laceBank.getSavings());

        laceBank.depositSavings(2000);
        System.out.printf("DEPOSIT $%.2f\n",laceBank.getSavings());

        laceBank.withdrawSavings(250);
        System.out.println(laceBank.getSavings());


        laceBank.withdrawChecking(500);
        laceBank.withdrawChecking(500);
        System.out.println(laceBank.getChecking());


        System.out.printf("****** TOTAL BANK ACCOUNTS #%s ******\n",BankAccount.getTotalAccounts());

        laceBank.setChecking(200);
        laceBank.setSavings(500);
        System.out.println("\n***** Lace Bank Accounts *****");
        System.out.printf("Checking Account: $%.2f\n", laceBank.getChecking());
        System.out.printf("Savings Account: $%.2f\n", laceBank.getSavings());
        System.out.println(BankAccount.getLotsOfMoney());


        System.out.println("\n***** Sonny Bank Accounts *****");
        BankAccount sonnyBank = new BankAccount();
        System.out.printf("Your Total: $%.2f\n",  sonnyBank.getAll());


        sonnyBank.depositChecking(5000);
        System.out.println(sonnyBank.getChecking());
        System.out.printf("Your Total: $%.2f\n",  sonnyBank.getAll());
        System.out.printf("Checking Account: $%.2f\n", sonnyBank.getChecking());
        System.out.printf("Savings Account: $%.2f\n", sonnyBank.getSavings());

        System.out.printf("THIS BANK OVERALL TOTAL: $%.2f\n", BankAccount.getLotsOfMoney());

    }
}
