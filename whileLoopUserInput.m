%{
whileLoopUserInput - Demonstrate functionality of while loops.
Authors:    Bram Hampton
Assignment: YOP 06 - monitor
Changed:    18 oct 2017
Purpose:
  Takes input from the user and compares it to a toleranceLimit. Loop
  continues until user value exceeds the limit.
%}

toleranceLimit = 4.2;
userValue = input('Please enter value: ');

while userValue < toleranceLimit
    disp('All is well!');
    userValue = input('Please enter value: ');
end

disp('Shut down test');