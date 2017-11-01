clear
clc

dataVoltage = xlsread('ThermosData.xlsx');

thermistorR = (1000 .* dataVoltage) ./ (5 - dataVoltage);

thermistorKelvin = resistanceToTemp(thermistorR);

thermistorF = 5/9 * thermistorKelvin - 273.15 + 32;

plot(thermistorF);
title('Temperature of thermistor over time')
ylabel('Temperature');
xlabel('Time');