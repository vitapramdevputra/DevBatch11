Calculator c2 = new Calculator();
c2.welcomeMessage();

Date date1 = Date.newInstance(2020, 6, 22);
boolean date1LP = c2.leapYearCheck(date1);
system.debug(date1 + ' is leap year? ' + date1LP);



integer c2sum33 = c2.add(10,15,25);
system.debug(c2sum33);


c2.add(10, 15);
system.debug('c2Sum1 is ' + c2Sum1);
integer c2Sum2 = c2.add(45, 55);
system.debug('c2Sum2 is ' + c2Sum2);
integer x = 88;
integer y = 99;
integer c2Sum3 = c2.add(x, y);
system.debug('c2Sum3 is ' + c2Sum3);





//method name, parameter, return type
string returnC2 = c2.printAndReturnMessage('print this asap');
system.debug(returnC2);




Calculator c1 = new Calculator();
c1.welcomeMessage();
//1. 
string message = 'print this message';
c1.printNewMessage(message);
//2.
c1.printNewMessage('now print this.');
//3
// integer msg = 15;
// c1.printNewMessage(msg);