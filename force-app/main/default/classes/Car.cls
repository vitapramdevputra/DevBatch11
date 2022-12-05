//created a class.
public class Car {
    //public class variable
    public string carColor = '';
    public string carName = '';
    //if we don't have any access modifier, by default it is PRIVATE
    integer maxSpeed = 150; 
     //crated a method
    public void switchOn(){
        datetime switchOnTime = datetime.now();
        //THIS IS METHOD BODY.
        system.debug('starting the car');
    }
    
    public void drive(){
        
        system.debug('driving ' + carName + ' of color ' + carColor);
    } 
    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving ' + carName + ' at ' + maxSpeed + ' km/hr';
        system.debug(drivingDescription);
    }
}

//SAVE CLASS.
//right click. > sfdx deploy.

//class, we deploy.
//anonymous apex, we execute.



