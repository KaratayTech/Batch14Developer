Car vw = new Car();
vw.carColor = 'white';
vw.carName = 'polo';
vw.switchOn();
vw.drive();
vw.driveAtMaxSpeed();

Car bm = new Car();
bm.carColor = 'Black';
system.debug('bm ==> '+bm);
bm.switchOn();
system.debug('bm color ==> '+bm.carColor);

Car lm = new Car();
lm.carColor = 'red';
system.debug('lm ==> ' +lm);
// lm.maxSpeed =200;
// maxSpeed won't show because it is private variable. You cannot call it from here.
lm.switchOn();
system.debug('you cannot reach maxSpeed through here...');
