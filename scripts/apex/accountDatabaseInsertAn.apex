Account ac1 = new account();
ac1.Name = 'Abc test';
ac1.Industry = 'Energy';

Account ac2  =  new Account();
ac2.Name = 'xyx test';

account ac3 = new account();
account ac4 = new account();

list<account> listAcc = new list<account>{ac1, ac2, ac3, ac4};

List<database.SaveResult> results = Database.insert(listAcc, false);

for(database.SaveResult r: results){
    if(r.isSuccess()){
        system.debug('inserted successfully, record id is ' + r.getId());
    } else {
        system.debug('errored out. errors are ' + r.getErrors());
    }
}