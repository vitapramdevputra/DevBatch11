public class ListDemo {
   public static string cadidatesList(integer i) {
    
        List<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('list of candidates ' + listCandidates);
        string returnValue = ''; //5 index did not found

        //check size of list.
        integer sizeOfList = listCandidates.size(); //4
        if(i>= 0 && i < sizeOfList){
            returnValue = listCandidates[i]; //getting value from index i
        } else {
            returnValue = 'No values found. come on.';
        }

        return returnValue;
   }

   public static void randomIntegerList() {
        list<integer> listInteger = new List<Integer>();
        listInteger.add(10); //0
        listInteger.add(15); //1
        listInteger.add(21); //2
        listInteger.add(15); //3
        listInteger.add(15); //4

        integer index3value = listInteger.get(3); //get value at index 3 first way.
        integer index3value2 = listInteger[3]; //get value at index 3 second way.

        system.debug('index at value 3 --> ' + index3value);
        system.debug('list of random integer is ' + listInteger);
   }

   public static void allCats(){
        List<cat> listCats = new list<cat>();
        //how to add cats in this list?
        Cat sfCat2 = new Cat('Leo', 'Orange');
        Cat sfCat3 = new Cat('Luna', 'Brown');
        Cat batch11Cat = new Cat('fluffykins', 'white');
        listCats.add(sfCat2);    
        listCats.add(sfCat3);    
        listCats.add(batch11Cat);//we add 'instances' of cat class.
        listCats.add(sfCat2);
        system.debug('cat list ' + listCats);
   }
}
