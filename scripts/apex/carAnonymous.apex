//create object of car class.
//we also call it INSTACE of class.

//ClassName
system.debug('tesla created');
Car tesla = new car(); 
tesla.carName = 'model S';
tesla.carColor = 'Black';
datetime s= tesla.switchOn();
system.debug('tesla car color -> ' + tesla.carColor);
system.debug('tesla -> ' + tesla);
tesla.drive();
tesla.driveAtMaxSpeed();
system.debug('tesla done');

system.debug('bmw created');
car bmw = new car();
bmw.carName = 'xyz';
bmw.carColor = 'white';
bmw.switchOn();
system.debug('bmw car color -> ' + bmw.carColor);
system.debug('bmw  -> ' + bmw);
bmw.drive();
bmw.driveAtMaxSpeed();
system.debug('bmw done');

car toyota = new car();
toyota.switchOn();
toyota.drive();