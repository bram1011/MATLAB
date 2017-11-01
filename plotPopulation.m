%{
plotPopulation - Graph a logistical growth curve
Authors:    Bram Hampton
Assignment: EGR 102-009 Logistic Function Plot
Changed:    18 oct 2017
Purpose:
  Uses a for loop to iterate through r and plot the population at various
  times with multiple graphs.
%}

hold on

% A code to graph a logistic growth curve

for r = 0.4 : 0.2 : 2.0
    

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
end

hold off