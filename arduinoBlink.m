%{
ArduinoBlink - Blink and dim arduino.
Author:    Bram Hampton
Assignment: Blink LED With Matlab
Changed:    30 September 2017
Purpose:
  First blinks LED 10 times, then dims the LED, dims the LED using
  PWMVoltage, and then finally turns the LED off.
%}

% Connects Arduino and assigns arduino to a value
a = arudino('com3','uno');

% Blink 10 times
for i=1:10
    writeDigitalPin(a, 'D9', 0);
    pause(0.5);
    writeDigitalPin(a, 'D9', 1);
    pause(0.5);
end

brightness_step = 1/20;

% Dimming code
for i=20:-1:1
    disp(i);
    writePWMDutyCycle(a, 'D9', i*brightness_step);
    pause(0.5);
end

for i=20:-1:1
    writePWMDutyCycle(a, 'D9', i*brightness_step);
    disp(i);
    pause(0.5);
end

% Dimming using PWMVoltage
for i=20:-1:1
    disp(i);
    writePWMVoltage(a, 'D9', i*brightness_step);
    pause(0.5);
end

for i=20:-1:1
    writePWMVoltage(a, 'D9', i*brightness_step);
    disp(i);
    pause(0.5);
end

%Turns LED off
writeDigitalPin(a, 'D9', 0);