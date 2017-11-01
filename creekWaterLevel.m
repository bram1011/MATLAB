%{
creekWaterLevel - Finds mean, min, and max water level
Authors:    Bram Hampton
Assignment: creek
Changed:    4 October 2017
Purpose:
  Inputs data from an excel sheet which represents the water levels of a
  creek, and returns the average, minimum, and maximum values of the excel
  sheet.
%}

water = xlsread('ElkhornCreekUSGS.xlsx');
% Imports data
waterLevel = mean(water);
minLevel = min(water);
maxLevel  = max(water);
%Finds average, minimum, and maximum of data