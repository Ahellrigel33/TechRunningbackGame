%% Load file
fs = 44100;

%% Running sand
audio = audioread("SoundFiles\RunningSand.mp3");
audio = audio(round(fs*1.5)+1:round(fs*2.3),2);
oL = length(audio);
audio = transpose(interp1(1:length(audio), audio, linspace(1, length(audio), 25000)));
sqAudio = (audio >= 0)*1;

%% Hit
audio = audioread("SoundFiles\SoundFX.mp3");
audio = audio(round(fs*34.4)+1:round(fs*34.8),2);
audio2 = audioread("SoundFiles\Whistle.mp3");
audio2 = audio2(round(fs*0)+1:round(fs*1),2);
audio = [audio; zeros(20000,1); audio2];
sqAudio = (audio >= 0)*1;


%% Whoosh
audio = audioread("SoundFiles\SoundFX.mp3");
audio = audio(round(fs*36.6)+1:round(fs*36.8),2);
sqAudio = (audio >= 0)*1;

%% Undertale
audio = audioread("SoundFiles\Undertale.mp3");
audio = audio(round(fs*0)+1:round(fs*8),2);
sqAudio = (audio >= 0)*1;

%% Hear sound as normal
sound(audio, fs);


%% Hear sound as square wave
sound(sqAudio, fs);

%% Hear repeated square wave
repSqAudio = [sqAudio; sqAudio; sqAudio; sqAudio; sqAudio];
sound(repSqAudio, fs);

%% Plot
figure;
hold on
area(tt(1:10000), sqAudio(1:10000));


%% Output files
%%
audiowrite("RamblinWreckNormal.wav",audio, fs);
%%
audiowrite("Whoosh.wav",sqAudio, fs);
%%
audiowrite("RunningSandFast.wav",repSqAudio, fs);



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

    













