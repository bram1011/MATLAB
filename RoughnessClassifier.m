%{
RoughnessClassifier - Determines if data set is rough, medium, or smooth
Authors:    Bram Hampton, Benjamin Gilliam
Assignment: EGR 102 Surface Roughness Classifier
Changed:    26 Oct 2017
Purpose:
  Uses max, min, and average of data from photoreceptor to determine when
  the material is rough, medium, or smooth.
%}

%a = arduino('com6','uno') %only needed if arduino not connected
analog = zeros(1,5); %holds voltage reads

   for index = 1:5 %run values 1 to 5
       analog(index) = readVoltage(a,'A0'); %read from arduino
       pause (.2); %slows down read speed
         count=5-index;  % this is to give you a count down on your screen
         disp(count);
   end %end inside loop
        x2=max(analog);
        x3=min(analog);
        x1=mean(analog); %sets the average from the test



if x1 < 1.14614
    disp('rough');
elseif x1 >= 1.39541
        disp('smooth');
        
elseif x1 < 1.35941
    if x3 < 1.22923
        disp('medium');
    end
    elseif x3 >= 1.22923
        if x1 < 1.25122
            disp('smooth');
        
        else
            disp('medium');
        end
end


