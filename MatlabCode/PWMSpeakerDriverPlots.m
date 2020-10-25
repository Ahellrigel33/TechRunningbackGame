%% View 25% Duty cycle
figure;
hold on
tt = 1/sim_freq*[0:length(dc64V)-1];
area(tt, dc64V);
ylim([-1 3]);
%xlim([0.015 0.02]);
title("Voltage Across Speaker with Ramp Input");
xlabel("Time (s)")
ylabel("Voltage (V)")

%% View 25% Duty cycle fft
figure;
dc64fft = fft(dc64V);
n = length(dc64V);
f = (0:n-1)*(sim_freq/n);
dc64Pow = abs(dc64fft).^2/n;
area(f, dc64Pow);
ylim([0 10000]);
xlim([0 10000]);
title("Spectrum of Speaker Output with Ramp Input");
xlabel("Frequency (Hz)");
ylabel("Power");











%% View Voltage Ramp
figure;
hold on
tt = 1/sim_freq*[0:length(RampV)-1];
area(tt, RampV);
ylim([-1 3]);
%xlim([0.015 0.02]);
title("Voltage Across Speaker with Ramp Input");
xlabel("Time (s)")
ylabel("Voltage (V)")

%%
figure;
Rampfft = fft(RampV);
n = length(RampV);
f = (0:n-1)*(sim_freq/n);
RampPow = abs(Rampfft).^2/n;
area(f, RampPow);
ylim([0 3000]);
xlim([0 100000]);
title("Spectrum of Speaker Output with Ramp Input");
xlabel("Frequency (Hz)");
ylabel("Power");





%% View Voltage Sine 20000 Hz
figure;
hold on
tt = 1/sim_freq*[0:length(Sin20000V)-1];
area(tt, Sin20000V);
ylim([-1 3]);
%xlim([0.015 0.02]);
title("Voltage Across Speaker with 2000 Hz Sine Wave Input");
xlabel("Time (s)")
ylabel("Voltage (V)")


%% Lowpass filter on Sine 20000 Hz
figure;
hold on
tt = 1/sim_freq*[0:length(Sin20000V)-1];
Sin20000LP = lowpass(Sin20000V,40000,sim_freq,'StopbandAttenuation',80);
area(tt, Sin20000LP);




%% View Power Sine 20000 Hz
figure;
hold on
tt = 1/sim_freq*[0:length(Sin20000P)-1];
area(tt, Sin20000P);
ylim([0 0.002]);
title("Speaker Power with 500Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Power (W)");



%% View DFT of Voltage Sine 20000 Hz
figure;
Sin20000fft = fft(Sin20000V);
n = length(Sin20000V);
f = (0:n-1)*(3000000000/n);
Sin20000Pow = abs(Sin20000fft).^2/n;
area(f, Sin20000Pow);
ylim([0 3000]);
xlim([0 100000]);
title("Spectrum of Speaker Output with 2000Hz Sine Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");



%% View Voltage Sine 2000 Hz
figure;
hold on
tt = 1/2000000000*[0:length(Sin2000V)-1];
area(tt, Sin2000V);
ylim([-1 3]);
%xlim([0.015 0.02]);
title("Voltage Across Speaker with 2000 Hz Sine Wave Input");
xlabel("Time (s)")
ylabel("Voltage (V)")




%% View Power Sine 2000 Hz
figure;
hold on
tt = 1/2000000000*[0:length(Sin2000P)-1];
area(tt, Sin2000P);
ylim([0 0.002]);
title("Speaker Power with 500Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Power (W)");



%% View DFT of Voltage Sine 2000 Hz
figure;
Sin2000fft = fft(Sin2000V);
n = length(Sin2000V);
f = (0:n-1)*(2000000000/n);
Sin2000Pow = abs(Sin2000fft).^2/n;
area(f, Sin2000Pow);
ylim([0 1500]);
xlim([0 10000]);
title("Spectrum of Speaker Output with 2000Hz Sine Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");



%% View Voltage Square 1000 Hz
figure;
hold on
tt = 1/sim_freq*[0:length(Sq1000V)-1];
area(tt, Sq1000V);
ylim([-0.2 0.2]);
xlim([0 0.01]);
title("Voltage Across Speaker with 1000 Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Voltage (V)")

%% Hear it
sound(downsample(Sq1000V,10000),round(sim_freq/10000));


%% View DFT of Voltage Square 1000 Hz
figure;
Sq1000fft = fft(Sq1000V);
n = length(Sq1000V);
f = (0:n-1)*(fs/n);
Sq1000Pow = abs(Sq1000fft).^2/n;
area(f, Sq1000Pow);
ylim([0 1500]);
xlim([0 10000]);
title("Spectrum of Speaker Output with 1000Hz Square Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");

%% View Power Square 500 Hz
figure;
hold on
tt = 1/fs*[0:fs*0.1];
%area(tt(1,1:100000), Sq500P(1:100000,1));
area(tt, Sq500P);
ylim([0 0.002]);
title("Speaker Power with 500Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Power (W)");

%% View DFT of Square 500 Hz
figure;
Sq500fft = fft(Sq500P);
n = length(Sq500P);
f = (0:n-1)*(fs/n);
Sq500Pow = abs(Sq500fft).^2/n;
area(f, Sq500Pow);
ylim([0 0.035]);
xlim([0 5000]);
title("Spectrum of Speaker Output with 500Hz Square Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");

%% View Power Square 1000 Hz
figure;
hold on
tt = 1/fs*[0:fs*0.05];
area(tt, Sq1000P);
ylim([0 0.002]);
xlim([0.015 0.02]);
title("Speaker Power with 1000Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Power (W)");

%% View DFT of Square 1000 Hz
figure;
Sq1000fft = fft(Sq1000P);
n = length(Sq1000P);
f = (0:n-1)*(fs/n);
Sq1000Pow = abs(Sq1000fft).^2/n;
area(f, Sq1000Pow);
ylim([0 0.005]);
xlim([0 10000]);
title("Spectrum of Speaker Output with 1000Hz Square Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");

%% View Power Square 5000 Hz
figure;
hold on
tt = 1/fs*[0:fs*0.01];
area(tt, Sq5000P);
ylim([0 0.004]);
title("Speaker Power with 5000Hz Square Wave Input");
xlabel("Time (s)")
ylabel("Power (W)");

%% View DFT of Square 5000 Hz
figure;
Sq5000fft = fft(Sq5000P);
n = length(Sq5000P);
f = (0:n-1)*(fs/n);
Sq5000Pow = abs(Sq5000fft).^2/n;
area(f, Sq5000Pow);
ylim([0 0.01]);
xlim([0 50000]);
title("Spectrum of Speaker Output with 5000Hz Square Wave Input");
xlabel("Frequency (Hz)");
ylabel("Power");