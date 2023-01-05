Map<string, country_code__c> allCountryCodes = country_code__c.getAll();
system.debug('all country codes => ' + allCountryCodes);
for (string eachCountry : allCountryCodes.keySet()) {
    system.debug('Country is ' + eachCountry + ' its code is ' + allCountryCodes.get(eachCountry).code__c);
}