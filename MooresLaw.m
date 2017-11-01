%{
MooresLaw - Fixed program for graphing Moore's Law
Authors:    Bram Hampton
Assignment: EGR 102 YOP: Debug 3 programs
Changed:    Oct 24 2017
Purpose:
  Fixed error in program by adding a required double '' as only one '
  caused a syntax error by closing the string.
%}

% This program will do a rough plot of Moore's law, the equation that says
% the amount of computing power on a chip will double every 24 months.  A
% simplified version of that equation is of the form y=1-2^(x/24) where x
% is the number of months and y is a factor of computing power.

% initialize some values
x=zeros(100);

for i=1:length(x)
    y(i)=(2^(i/24));
    x(i)=i;
   
end

plot(x,y)
title('Moore''s law shows growth')
xlabel('months')
ylabel('growth factor')