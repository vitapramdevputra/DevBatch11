@isTest
public class DmlDemoTest {
    @istest
    private static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj(); //THIS will create record in TEST world (NOT IN ORG)

        //soql will fetch records from TEST world (not from org)
        List<account> listAcc = [select id, name from account where name = 'SoftInnovas'];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @istest
    private static void dmlInsert4Test() {
        //prepare data
        Account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlInsertDemo_4();

        List<contact> listContact = [select id, lastName from contact where lastname = 'Biden'];
        system.assertEquals(1, listContact.size());
    }
}
