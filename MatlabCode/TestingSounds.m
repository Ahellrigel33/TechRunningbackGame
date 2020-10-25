%% Load file
ramblinWreck = audioread("ramblinWreck.mp3");
fs = 44100;
RWsec = ramblinWreck(round(44100*11.2):44100*24.4,2);
tt = 1/fs*[0:length(RWsec)-1];

maskTop = RWsec > 0;
maskBot = RWsec < 0;

sqRWsec = ones(length(RWsec), 1)/2;
for i = 1:length(sqRWsec)
    if maskTop(i)
        sqRWsec(i) = 1;
    end
    if maskBot(i)
        sqRWsec(i) = 0;
    end
end

%% Hear sound as normal
sound(RWsec, fs);


%% Hear sound as square wave
sound(sqRWsec, fs);

%% Plot
figure;
hold on
area(tt(1:10000), sqRWsec(1:10000));


%% Output files
audiowrite("RamblinWreckNormal.wav",RWsec, fs);
audiowrite("RamblinWreckSquare.wav",sqRWsec, fs);

%% Fix volume
volume = abs(RWsec);
plot(tt, volume);

volume = round(volume*256);


%% Output BIN Files


