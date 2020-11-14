%% Load file
close all
fs = 44100;
tt = 1/fs*[0:15000-1];
audio = []
for i=[523.25 587.33 659.25 698.46 783.99 880 987.77 1046.5]
    audio = [audio square(2*pi*i*tt)]
end
tt = 1/fs*[0:length(audio)-1];



maskTop = audio >= 0;
maskBot = audio < 0;

sqAudio = ones(length(audio), 1)/2;
for i = 1:length(sqAudio)
    if maskTop(i)
        sqAudio(i) = 1;
    end
    if maskBot(i)
        sqAudio(i) = 0;
    end
end


%% Hear sound as normal
sound(audio, fs);


%% Hear sound as square wave
sound(sqAudio, fs);


%% Output files
%audiowrite("UpNormal.wav",audio, fs);
audiowrite("CMScale.wav",sqAudio, fs);


%% Create pulse-length vector


k = 0;
currVal = sqAudio(1);
num_pulses = 0
for i = 1:length(sqAudio)
    if sqAudio(i) ~= currVal
        num_pulses = num_pulses + 1;
        if currVal == 0
            currVal = 1;
        else
            currVal = 0;
        end
    end
end


pulses = zeros(1, num_pulses + 1);
currVal = sqAudio(1);
j = 1;
for i = 1:length(sqAudio)
    if sqAudio(i) == currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulses(j) = k;
        j = j + 1;
        if currVal == 0
            currVal = 1;
        else
            currVal = 0;
        end
        k = 1;
    end
end
pulses = [pulses 0];

writematrix(pulses, "MemoryFiles\SongVector.txt");

    













