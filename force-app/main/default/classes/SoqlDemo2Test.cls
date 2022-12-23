@isTest
public class SoqlDemo2Test {

   @TestSetup
   static void makeData(){
         //1. Prepare data
         Account acc1 = new account();
         acc1.name = 'SI Test';
         acc1.Industry = 'Energy';
 
         Account acc2 = new account();
         acc2.name = 'UI Test';
         acc2.Industry = 'Energy';
 
         Account acc3 = new account();
         acc3.name = 'PI Test';
         acc3.Industry = 'Banking';
 
         List<account> listAcc = new list<account>{acc1, acc2, acc3};
         insert listAcc;
 
         list<contact> listcontact = new list<contact>();
         for (Integer i = 0; i < 300; i++) {
             contact cnt = new contact();
             cnt.LastName = 'Test SOQl';
             if (i < 100) {
                 cnt.accountid = acc1.id;
             } else if (i < 200) {
                 cnt.accountid = acc2.id;
             } else {
                 cnt.accountid = acc3.id;
             }
             listcontact.add(cnt);
         }
         insert listcontact;
   }

    @isTest
    private static void testMethod1() {
        //2. reset
        Test.startTest(); //to reset limits. 
        //to gurantee that our method which we want to test has LIMITs available
        SoqlDemo2.soqlchildToParent_1();
        Test.stopTest();
    }

    //testmethod2

    //testmethod3
}
