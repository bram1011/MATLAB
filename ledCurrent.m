function amps = ledCurrent(srcVolt, ledVolt, ohms)
%{
LED Current -- calculates current in LED
Authors:    Bram Hampton
Assignment: LED Current calculator
Changed:    13 September 2017
Purpose:
  Takes the source voltage, LED voltage, and resistance, and returns the
  current
%}

resistorVolt = srcVolt - ledVolt;
amps = resistorVolt / ohms;

end

