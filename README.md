# Robot_Controller

The following project is a robot controller based on IoT techniques.
It has the option to control the robot arm or the robot base.


The robot arm has 6 motors, 
and the user can control the arm by setting the angle for each motor using this project.
The robot base can move in one of 4 directions (right, left, forward, backward).


The project's main page (index.html) allows you to choose which part of the robot to control (arm or base),
and it will direct you to the corresponding page after clicking on your choice.


The project's arm controller page (ArmController.html) is a simple interface that has 6 sliders and 3 buttons.
The user will set each slider according to the required angle for the corresponding motor.
Next, the save button can be used to store the values into the database.
The robot can be turned on or off using the corresponding button. 

The project's base controller page (BaseController.html) is a simple interface that has 5 buttons.
The user will click the direction required to move the robot (right, left, forward, backward).
The fifth button is a "Stop" button which is used to order the robot to stop moving.

The project also contains a CSS file that is concerned with formating the design. 

Furthermore, the project contains php files used to connect the webpages to the database.
Two of the php files are used to insert the data (motor values and base direction) into the database.
The last 2 PHP files labeled "hardware connection" are used to retrieve data from the DB, used to connect to the Hardware.

Finally, the project contains an sql file that contains the dump file for the database.
The sql file contains the sql queries for creating the tables needed.
In addtion, the sql queries for some sample data insertions are included. 
