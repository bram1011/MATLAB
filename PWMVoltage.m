brightness_step = 1/5;

for i=20:-1:1
    disp(i);
    writePWMVoltage(a, 'D9', i*brightness_step);
    pause(0.5);
end

for i=20:-1:1
    writePWMVoltage(a, 'D9', i*brightness_step);
    disp(i);
    pause(0.5);
end

writeDigitalPin(a, 'D9', 0);