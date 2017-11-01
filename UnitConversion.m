%{
UNITCONVERSION - Converts inches to centimeters
Author:    Bram Hampton
Assignment: EGR 102-000 Week 2 Example
Changed:    12 September 2017
Purpose:
  Take an input (inches) and uses the general conversion equation to return the
  equivalent centimeters
%}

userInches = input('Please enter inches: ');
%Takes the input for inches
convCentimeters = userInches * 2.54
%Performs the conversion and displays it