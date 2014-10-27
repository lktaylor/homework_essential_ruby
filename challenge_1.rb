# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

def pmt(rate, nper, pv)
  # =========================================================
public class LoanStatement{

    public static void main(String []args){
        // declare variables
        double interest; // interest attributed to the loan
        double mInterest; // loans interest  divided by 12
        int time; // how long the loan was taken out for
        double principle; // the amount borrowed
        double mPayment; // how much is to be paid each month
        double loan;


       // initate new scanner class
        Scanner keyboard = new Scanner(System.in);

       // get user input/information
        System.out.println("Hi, Please enter the loan amount here:");
        principle = keyboard.nextDouble();

        System.out.println("Thanks, now what is the annual interest rate in decimal notation" +
            "(example: 7.5% is 0.075:");
        interest = keyboard.nextDouble();

        System.out.println("now please put in the number of months the loan was taken out for");
        time = keyboard.nextInt();

        // call method to calculate and return monthly interest rate
        mInterest = calcMInterest( interest );

       // call method to calculate and return the monthly payment
        mPayment = calcMPayment (mInterest, principle, time);

        // call method to print loan statement
        loanStatement(principle,interest,time,mPayment);
    }

    // this method calculates and returns the monthly interest on the loan
    public static double calcMInterest(  double interest )
    {
        double mInterest;

        mInterest = (interest / 12);

        return mInterest;

    } // end calcMInterest


    // this method calculates and returns the monthly payment
    public static double calcMPayment (double mInterest, double principle, int time)
    {
        double mPayment;
        mPayment = (mInterest * principle) / (1-(1+ Math.pow(mInterest,-time)));

        return mPayment;
    } // end calcMPayment

    // this class prints a loan statement showing the amount borrowed
    // and the amount borrowed, the annual interest rate, the number of months
    // and the monthly payment
    public static void loanStatement(double principle, double interest, int time, double mPayment)
    {
       System.out.println(" principle is" + principle);
    }
}
end

# Example usage of the method is below. Uncomment to test your pmt method,
#   and once you have successfully defined it, re-comment them (before
#   starting challenge_2.rb).

# the_payment = pmt(0.0404/12, 60, 30000)
# puts "Your monthly payment will be $#{the_payment.round(2)}."

# You should get $553.04.
