public class AccountQueueableExample implements Queueable{
    //class variable
    public list<account> listAcc;
    public AccountQueueableExample(List<account> accounts) {
        //assign parameter variable to Class variable
        listAcc = accounts;
    }

    public void execute(QueueableContext qc){
        list<account> updateAccs = new list<account>();
        for (account eachAcc : listAcc) {
            account a = new account();
            a.id = eachAcc.id;
            a.Name = eachAcc.Name + ' -- SI';
            updateAccs.add(a);
        }
        update updateAccs;
    }
}
