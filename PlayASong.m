%EGR 102. Authors: Abigail Masterson, Bram Hampton, Mitchyl Ainslie
%Assignment: EGR 102-009 PLay A Song 
%History: 
 
%Purpose to make and play a song 
 
%%% Arduino configuration: change these lines as necessary
Connect_Arduino();
 
 
% Frequencies of musical notes, in Hz.
A = 220;
F = 349;
C = 262;
E = 330;
G = 392;
D = 293;
Rest = 0;
 
% Durations of musical notes, in seconds.
Whole = 0.6;
Half = Whole / 2;
Quarter = Whole / 4;
 
% The song to play.  Column 1 is the note, column 2 the duration. 
Song = [ E,     Whole; ...
         E,     Whole; ...
         F,     Whole; ...
         G,     Whole; ... 
         G,     Whole; ...
         F,     Whole; ...
         E,     Whole; ...
         D,     Whole; ...
         C,     Whole; ...
         C,     Whole; ...
         D,     Whole; ...
         E,     Whole; ...
         E,     Whole; ...
         D,     Whole; ...
         D,     Whole; ...
         
       ];
 
while true
    if readDigitalPin(a, 'D2')
        for idx = 1 : length(Song) % number of rows
            playTone(a, 'D9', Song(idx, 1), Song(idx, 2));
            % Wait until the note is over before starting the next one.
            pause(Song(idx, 2));
        end
    end
end