%% Load file
ramblinWreck = audioread("SoundFiles\Whistle.mp3");
fs = 44100;
audio = ramblinWreck(round(fs*0)+1:round(fs*1),2);
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
sound(maskTop*1, fs);

%% Hear repeated square wave
repSqAudio = [sqAudio; sqAudio; sqAudio; sqAudio; sqAudio];
sound(repSqAudio, fs);

%% Plot
figure;
hold on
area(tt(1:10000), sqAudio(1:10000));


%% Output files
%audiowrite("RamblinWreckNormal.wav",audio, fs);
audiowrite("Whistle.wav",sqAudio, fs);

%% Fix volume
volume = abs(audio);
plot(tt, volume);

volume = round(volume*256);


%% Create pulse-length vector

pulses = [];
k = 0;
currVal = sqAudio(1);
for i = 1:length(sqAudio)
    if sqAudio(i) == currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulses = [pulses k];
        if currVal == 0
            currVal = 1;
        else
            currVal = 0;
        end
        k = 1;
    end
end
pulses = [pulses 0];

%% Generate MIF File
writematrix(pulses, "MemoryFiles\SongVector.txt");

    













