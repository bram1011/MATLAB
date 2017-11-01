%{
canWithServo - Use while loops to determine can state
Authors:    Bram Hampton, Julianne Koenig, Brent Vennes
Assignment: Build a food monitor system
Changed:    11 October 2017
Purpose:
  Uses photoresistor to open and close gate with servo, and count cans as
  they go through.
%}

%Connect_Arduino();
%Connects to Arduino(RUN ONCE)

%servo1 = servo(a, 'D9', 'MinPulseDuration', 700*10^-6, 'MaxPulseDuration', 2300*10^-6);
%Connects to servo, RUN ONCE

noCan=4.2; %Threshold for light

count =0; % this variable will be used as an ACCUMULATOR to count the cans

% start with Gate down
writePosition(servo1, 0.5);
canState = readVoltage(a,'A0'); %Determines if sensor is blocked

while 1==1  %to run continuously

    while canState >= noCan %continually run
       % no can in the way, gate stays down
       writePosition(servo1, 0.5);
       canState = readVoltage(a,'A0');
       pause(1); % wait a second

    end %end while loop 

count = count+1;

    while canState < noCan %sensor is blocked
        writePosition(servo1, 1); % raise the gate
        canState = readVoltage(a,'A0');
        % wait for the can to move out of the way
        pause (3);

    end
    writePosition(servo1, 0.5); %Close gate
    disp(count); %Dsiplays number of cans
end