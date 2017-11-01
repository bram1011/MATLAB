%{
ethanol - Graph bushels vs year
Authors:    Bram Hampton
Assignment: EGR 201--001 Your Own Program 5
Changed:    10 October 2017
Purpose:
  Imports and makes a scatter graph of data from corn bushels used to produce ethanol per year.
%}

ethanolData = xlsread('Ethanol from Corn.xlsx');
%Imports data
bushels = ethanolData(:,2);
year = ethanolData(:,1);
%Takes each of the columns in their own arrays
scatter(year, bushels);
title('Corn used for ethanol production per year');
xlabel('Year');
ylabel('Milions of Bushels of corn');
%Creates the graph using the above data