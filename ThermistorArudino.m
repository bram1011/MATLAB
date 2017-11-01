%{
ThermistorArduino - Graphs data from thermistor
Authors:    Bram Hampton
Assignment: Temperature monitor circuit
Changed:    4 October 2017
Purpose:
  Graphs temperature data from a thermistor on an arudino.
%}

%Connect_Arduino(); %only needed if arduino not connected
analogVoltage = zeros(1,100); %holds voltage reads

for index=1:100 %Take 100 readings from the thermistor  
   analogVoltage(index) = readVoltage(a,'A0'); %read from arduino
   pause (.1); %slows down read speed
   
   plot (analogVoltage); %plots values 
   ylim([-1 6]); %set y limits of plot
   ylabel('Voltage'); %label Y axis  
end %end for loop
   

   
%***********************************************************
%   YOUR CODE HERE
%***********************************************************
xlswrite('ThermosData.xlsx', analogVoltage);

