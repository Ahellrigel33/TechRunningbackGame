%% Load files
fs = 44100;

file = audioread("SoundFiles\ramblinWreck.mp3");
ramblinWreck = file(round(fs*11.2):round(fs*24.4),2);

running = audioread("SoundFiles\RunningSand.mp3");
running = running(round(fs*1.5)+1:round(fs*2.3),2);
oL = length(running);
running = transpose(interp1(1:length(running), running, linspace(1, length(running), 25000)));

hit1 = audioread("SoundFiles\SoundFX.mp3");
hit1 = hit1(round(fs*34.4)+1:round(fs*34.8),2);
hit2 = audioread("SoundFiles\Whistle.mp3");
hit2 = hit2(round(fs*0)+1:round(fs*1),2);
hit = [hit1; zeros(20000,1); hit2];

whoosh = audioread("SoundFiles\SoundFX.mp3");
whoosh = whoosh(round(fs*36.6)+1:round(fs*36.8),2);


% Convert to square waves
ramblinWreck = (ramblinWreck >= 0)*1;
running = (running >= 0)*1;
hit = (hit >= 0)*1;
whoosh = (whoosh >= 0)*1;


%% Hear sounds
%%
sound(ramblinWreck, fs);
%%
sound(running, fs);
%%
sound(hit, fs);
%%
sound(whoosh, fs);


%% Create pulse-length vector ramblinWreck
num_pulses = 0;
currVal = ramblinWreck(1);
for i = 1:length(ramblinWreck)
    if ramblinWreck(i) ~= currVal
        num_pulses = num_pulses + 1;
        currVal = abs(currVal-1);
    end
end

k = 0;
pulsesRW = zeros(1, num_pulses + 1);
j = 1;
currVal = ramblinWreck(1);
for i = 1:length(ramblinWreck)
    if ramblinWreck(i) == currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulsesRW(j) = k;
        j = j + 1;
        currVal = abs(currVal-1);
        k = 1;
    end
end

%% Create pulse-length vector running
num_pulses = 0;
currVal = running(1);
for i = 1:length(running)
    if running(i) ~= currVal
        num_pulses = num_pulses + 1;
        currVal = abs(currVal-1);
    end
end

k = 0;
pulsesR = zeros(1, num_pulses + 1);
j = 1;
currVal = running(1);
for i = 1:length(running)
    if running(i) ~= currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulsesR(j) = k;
        j = j + 1;
        currVal = abs(currVal-1);
        k = 1;
    end
end

%% Create pulse-length vector hit
num_pulses = 0;
currVal = hit(1);
for i = 1:length(hit)
    if hit(i) ~= currVal
        num_pulses = num_pulses + 1;
        currVal = abs(currVal-1);
    end
end

k = 0;
pulsesH = zeros(1, num_pulses + 1);
j = 1;
currVal = hit(1);
for i = 1:length(hit)
    if hit(i) ~= currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulsesH(j) = k;
        j = j + 1;
        currVal = abs(currVal-1);
        k = 1;
    end
end

%% Create pulse-length vector whoosh
num_pulses = 0;
currVal = whoosh(1);
for i = 1:length(whoosh)
    if whoosh(i) ~= currVal
        num_pulses = num_pulses + 1;
        currVal = abs(currVal-1);
    end
end

k = 0;
pulsesW = zeros(1, num_pulses + 1);
j = 1;
currVal = whoosh(1);
for i = 1:length(whoosh)
    if whoosh(i) ~= currVal
        k = k + 1;
    else
        if currVal == 0
            k = k + 32768;
        end
        pulsesW(j) = k;
        j = j + 1;
        currVal = abs(currVal-1);
        k = 1;
    end
end


%%
pulses = [pulsesRW pulsesR pulsesH pulsesW];
writematrix(pulses, "MemoryFiles\SongVector.txt");

    













