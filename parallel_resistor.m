%{
EGR102HEADERCOMMENT - Demonstrate header comment style for EGR 102.
Authors:    Bram Hampton
Assignment: Parallel_resistor calculator
Changed:    7 September 2017
History:    7 September   2017 - Initial version.
Purpose:
  Calculate the total resistance of the parallel circuit
%}

ohms1 = input('Enter the first resistance: ');
if ohms1 < 0 
    disp('ERROR: Negative resistance, setting equal to 0');
    ohms1 = 0;
end

ohms2 = input('Enter the second resistance: ');
if ohms2 < 0 
    disp('ERROR: Negative resistance, setting equal to 0');
    ohms2 = 0;
end

ohms3 = input('Enter the third resistance: ');
if ohms3 < 0 
    disp('ERROR: Negative resistance, setting equal to 0');
    ohms3 = 0;
end

%Gathers the inputs for the three resistances
%Gets ohms ready for the equation

total_ohms = 1 / (1/ohms1 + 1/ohms2 + 1/ohms3);
%Executes the equation

srcVolt = input('Enter the source voltage: ');
ledVolt = input('Enter the LED voltage: ');
%Gets input for the current function

ledCurrent(srcVolt, ledVolt, total_ohms);
milAmps = amps * 1000;

if milAmps > 30
    disp('WARNING: Unsafe Current')
else
    disp('Current is safe')
end

disp(milAmps);