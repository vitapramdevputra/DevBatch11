public class StringDemoClass {

   public void stringMethod1(){
        String sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description is ' + lengthOfStr);

        string capsSessionDescription = sessionDescription.toUpperCase();
        system.debug('in CAPS -> ' + capsSessionDescription);

        //3. check if string contains 'apex'
        boolean apexContains = sessionDescription.contains('apex');
        system.debug('contains apex??????????? ' + apexContains);

        //3.2 check if string contains 'apex'
        boolean apexContains2 = sessionDescription.contains('Apex'); //'learning string methods in apex language.';
        system.debug('contains Apex??? ' + apexContains2);

        //3.3 check if string contains 'apex'
        boolean apexContains22 = sessionDescription.containsIgnoreCase('Apex'); 
        system.debug('contains ignore case Apex??? ' + apexContains22);


        //if string contains Salesforce.
        boolean sfContains = sessionDescription.contains('salesforce');
        system.debug('contains salesforce??????????? ' + sfContains);
        
   }
}
