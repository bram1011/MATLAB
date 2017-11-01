%a = arduino('com3','uno') %only needed if arduino not connected
analog = zeros(1,100); %holds voltage reads
test = 0; %sets initial test number

while 1==1 %continually run
    test =test +1; %defines test number
    AllValues = 0; % set initial average of this test to 0
    
    for index = 1:100 %run values 2 through 99
        analog(index) = readVoltage(a,'A0'); %read from arduino
        AllValues = analog(index)+ AllValues; %adds all values for test
        pause (.1); %slows down read speed
        plot (analog); %plots values
        ylim([-1 6]); %set y limits of plot
        ylabel('Voltage'); %label Y axis
    end %end for loop
    
    fprintf('Test %d, min voltage = %.2f, max = %.2f\n', ...
        test, min(analog), max(analog));
end %end while loop
