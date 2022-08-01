import java.util.Date;
public class AlfredQuotes {
    
    public String basicGreeting() {
        // You do not need to code here, this is an example method
        return "Hello, lovely to see you. How are you?";
    }
    
    public String guestGreeting(String name) {
        // YOUR CODE HERE
        return "Greeting fellow BatFans, it's lovely to meet you, " + name;
    }
    
    public String dateAnnouncement(String name) {
        // YOUR CODE HERE
        Date date = new Date();
        return "Oh my it's " + date +", your a day behind, " + name;
    }
    
    public String respondBeforeAlexis(String conversation) {
        // YOUR CODE HERE
        return "I was never hear if you know what I mean," + conversation;
    }
    public String respondRandom(String notRelevantTest) {
        // YOUR CODE HERE
        return "I lost my shoe " + notRelevantTest;
    }
    
	// NINJA BONUS
	// See the specs to overload the guessGreeting method
    // SENSEI BONUS
    // Write your own AlfredQuote method using any of the String methods you have learned!
}


