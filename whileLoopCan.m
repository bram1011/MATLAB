%{
whileLoopCan - Use while loops to determine can state
Authors:    Bram Hampton
Assignment: Food Line Monitor
Changed:    11 October 2017
Purpose:
  Use user input (for now) for whether the can is blocking the sensor, and
  count cans that go through.
%}

noCan=2; 

count =0; % this variable will be used as an ACCUMULATOR to count the cans

% start with Gate down
disp('gate down to start');
canState = input('is the the sensor blocked? If so type 1 otherwise 4=');

while 1==1  %to run continuously

    while canState >= noCan %continually run
       % no can in the way, gate stays down
       disp('gate down waiting on can');
       canState = input('is the the sensor blocked? If so type 1 otherwise 4=');
       pause(1); % wait a second

    end %end while loop 

count = count+1;

    while canState < noCan %sensor is blocked
        disp('gate up check to see if it is clear'); % raise the gate
        canState = input('is the the sensor blocked? If so type 1 otherwise 4=');
        % wait for the can to move out of the way
        pause (3);

    end
    disp('gate down to wait on next can');
    disp(count);
end