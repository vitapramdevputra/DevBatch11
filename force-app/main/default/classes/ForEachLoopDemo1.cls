public class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        list<integer> listInteger = new List<Integer>();
        listInteger.add(10); //0
        listInteger.add(15); //1
        listInteger.add(21); //2
        listInteger.add(15); //3

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
}
