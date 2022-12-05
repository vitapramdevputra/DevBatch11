public class SoqlDemo2 {
   public static void soqlchildToParent_1() {
        List<contact> listContacts = [select id, name, account.name, account.industry 
                                    from contact where account.industry = 'Energy'];
        system.debug(listContacts);//by default in contact we don't have account fields. so this doesn't show.
        for (Contact eachContact : listContacts) {
            //get account name from contact record
            string accName = eachContact.Account.name;
                         //contact name from contact record
            system.debug('contact name = ' + eachContact.Name + ', its acc name is ' + accName);
        }
   }

   public static void soqlParentToChild_1() {
        //if our outer query is account. and inner query is opportunity.
        //what list it would return?
        List<account> listAccOpp = [select id, name, annualrevenue, type, (select name, amount from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];

        for (account eachAcc : listAccOpp) {
            system.debug('acc name => ' + eachAcc.Name + ', annual revenue => ' + eachAcc.AnnualRevenue);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            for (opportunity eachOpp : listOpp) {
                system.debug('-- opp name => ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }
        }

   }
}
