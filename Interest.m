%{
Interest - Fixed program that calculates interest.
Authors:    Bram Hampton
Assignment: EGR 102 Debug 3 programs 
Changed:    23 October 2017
Purpose:
  Originally broken because accrued was misspelled, and the program does
  not recognize that (P0)(rate) is multiplication.
%}

% The scritp uses the simple interest rate formula A=P(1+rt) to calculate
% the Accrued amount of money (A) that you would have investing some
% principle (P) at a given interest rate per year (r) for a given number of
% years.  We will use this formulat to determine compound interest by
% putting it into a loop.  Yes, there is a direct equation for calculating
% compound interest - look it up and see how close this method comes if you
% are curious. 

% Set initial values:
P0 = 100; % One hundred dollars is the initial amount invested
rate= 0.03; % 3% annual interest rate
time = input ('how many years do you want to leave it there?  ');
TotalAccrued = P0; % you start with your principle

for i=1:time
    Accrued = P0 * (rate);
    TotalAccrued = TotalAccrued + Accrued;
end
disp(TotalAccrued)