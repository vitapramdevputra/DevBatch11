ListDemo.allCats();

string valueAt0 = ListDemo.cadidatesList(0);
system.debug(valueAt0);

string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);


ListDemo.randomIntegerList();


List<string> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('LIST is EMPTY. OKAY?');
}


list<integer> listInteger = new List<Integer>();
listInteger.add(10); //0
listInteger.add(15); //1
listInteger.add(21); //2
listInteger.add(15); //3
listInteger.add(12); //4
listInteger.add(18); //5
system.debug('before sort -> ' + listInteger);
listInteger.sort();
system.debug('after sort -> ' + listInteger);


