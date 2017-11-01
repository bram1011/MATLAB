% A code to graph a logistic growth curve
r=1.1; % growth rate
P0=50; % initial population
K=5000; % carrying capacity

% create a time array
time=0:1/12:10;
% create a population array to store calculations
numPoints=length(time);
Population=zeros(1,numPoints);
% calculate poplulations
for step=1:numPoints
 maxPop=P0*exp(r*time(step));
 Population(step)=(K*maxPop)/(K+maxPop+P0);

end
% plot the result
plot(time,Population)
title('Logistic Population Plot')
xlabel('time(yr)')
ylabel('Population')

