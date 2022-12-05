public class SetDemo {
   public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('TOKYO');

        System.debug('cities are ' + cities);
        
   }

   public static void randomIntegerSet() {
        set<integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);
        system.debug(setInt);
   }

   public static set<integer> setFromList(list<integer> intList) {
        set<integer> returnSet = new set<integer>();
        returnSet.addAll(intList);
        return returnSet;
   }

   public static set<string> capitalizeSet(set<string> setStr) {
        Set<String> returnSet = new set<string>();

        //iterate over each element of set
            //convert each element to uppercase
            //add in a newly created set
        for (string eachString : setStr) {
            //eachStr --> each element one by one from the SET
            string tempstring = eachString.toUpperCase();
            returnSet.add(tempstring);
        }
        return returnSet;
   }
}
