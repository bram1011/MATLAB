%{
TolderanceCounts - Determine number of hunger bars within tolerance
Author:    Bram Hampton
Assignment: Tolerance counts
Changed:    27 September 2017
Purpose:
  Determine the number of hunger bars that are overweight or underweight
  given an array of weights.
%}

nominalWeight = 4.13;
% Nominal/normal weight
tolerance = 0.25;
% Maximum deviation from nominal weight
minWeight = nominalWeight - tolerance;
maxWeight = nominalWeight + tolerance;
% Minimum and maximum acceptable weights

weights = xlsread('Week6Weights.xlsx');
% Initialize variables in excel spreadsheet

numWeight = length(weights);
% Number of variables

fprintf('First weight: %.2f   Last weight: %.2f \n', weights(1), weights(numWeight));
% Displays first and last weights in array

underweight = weights < minWeight;
overweight = weights > maxWeight;
% 1 if underweight/overweight, 0 if not
numUnderweight = sum(underweight);
numOverweight = sum(overweight);
% Number of overweight/underweight candy

percUnderweight = (numUnderweight/numWeight) * 100;
percOverweight = (numOverweight/numWeight) * 100;
% Percentage of weights that are under/overweight

fprintf('Underweight (< 3.88 oz) items: %.0f (%.2f %%)', numUnderweight, percUnderweight);
fprintf('Overweight ( > 4.38 oz) items: %.0f (%.2f %%)\n', numOverweight, percOverweight);
% Displays results