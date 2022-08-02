import java.util.ArrayList;

public class CafeUtil {
    public int getStreakGoal() {
    int sum = 0;
    byte weeks = 0;
    while(weeks < 10){
        sum += weeks;
        weeks++;
        }
    return sum;
    }
    public double getOrderTotal(double[] prices){
    double orderTotal = 0;
    for (int i = 0; i < prices.length; i++){
        orderTotal += prices[i];
        }
    return orderTotal;
    }
    public void displayMenu(ArrayList<String> menuItems){
    for(byte i = 0; i < menuItems.size(); i++){
        System.out.println( i +" "+ menuItems.get(i));
        }
    }
    
    public void addCustomer(ArrayList<String> customers) {
    // Does this modify the original list??
    // Prompt for input
    System.out.println("Please enter your name:");
    // Store terminal input as String
    String userName = System.console().readLine();
    // Print username back
    System.out.printf("Hello %s.\n", userName);
    // Print size of array indicating number of people ahead of user
    System.out.printf("There are %s people ahead of you.\n", customers.size());
    // Add user to customers
    customers.add(userName);
    System.out.println(customers);
    }
}