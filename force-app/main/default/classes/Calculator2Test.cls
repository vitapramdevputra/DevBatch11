@isTest //class becomes test class
public class Calculator2Test {

    @isTest //method becomes test method
    private static void testMessage() {
        //we want to test our calculator class's methods.
        Calculator2.welcomeMessage();
        //can we call parameterized methods from test class?
        Calculator2.printNewMessage('this is from test method');
    }
    @isTest
    private static void addTest1() {
        integer i = 10;
        integer j = 15;
        //we are testing 'add' method of calculator2 class
        integer sum1 = calculator2.add(i, j);
        //sum1 should be 25
        system.assertEquals(25, sum1);
        
    }
    @isTest
    private static void addTest2() {
        //we are testing 'add' method of calculator2 class
        integer sum1 = calculator2.add(10,15,25);
        //sum1 should be 25
        system.assertEquals(50, sum1); 
    }

}
