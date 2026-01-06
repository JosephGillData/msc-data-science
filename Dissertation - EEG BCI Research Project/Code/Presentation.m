%% Figure 1
data = A160108_lh_lists;

T = array2table(sample);
stackedplot(T)

fig=gcf;
fig.Position(3:4)=[1200,750];
%% Figure 2
A160108_data = A160108_raw.data;

fc_below = 1; 
fc_above = 45;
fs = 200;
Wn = [fc_below/(fs/2) fc_above/(fs/2)];
[b,a] = butter(8,Wn);

A160108_butter = filter(b,a,A160108_data);

% pwelch(A160108_butter(:,21));
%plot(10*log10(xxx))
[PSD,fq] = pwelch(A160108_butter(:,21));

plot(fq*30,10*log10(PSD))
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')
%%
[PSD,fq] = pwelch(A160108_butter(:,21));
PSD_mean = movmean(PSD,800);

[PSD_r,fq_r] = pwelch(A160108_data(:,21));
PSD_r_mean = movmean(PSD_r,800);

hold on 
plot(fq_r*30,10*log10(PSD_r_mean),'LineWidth',1.5)
plot(fq*30,10*log10(PSD_mean),'LineWidth',1.5)

xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')

lgd = legend('Unfiltered', 'Butterworth filter','FontSize',10);
title(lgd,'Filtering Method')
hold off
%%
PSD_mean = movmean(PSD,100);
plot(f*30,10*log10(hh))
%% Figure 3
[pxx,f] = pwelch(A160108_data(:,21));

plot(f*30,10*log10(pxx))
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')
%% Curve fitting Poynomial
data = A160108_lh_lists;
sample = data(:,:,1);
sample = sample(:,1);
x = 1:200;
x = x';

p2 = polyfit(x,sample,2);
y2 = polyval(p2,x);
p4 = polyfit(x,sample,4);
y4 = polyval(p4,x);
p9 = polyfit(x,sample,9);
y9 = polyval(p9,x);

hold on
plot(x/0.2,sample)
plot(x/0.2,y2,'r')
plot(x/0.2,y4,'k')
plot(x/0.2,y9,'g')
lgd = legend('EEG signal','2','4','9','FontSize',10);
title(lgd,'Degree')
xlabel('Time (ms)','FontSize',16)
ylabel('Voltage (mV)','FontSize',16)
hold off
%% Curve fitting Fourier
data = A160108_lh_lists;
sample = data(:,:,1);
sample = sample(:,1);
x = 1:200;
x = x';
f1 = fit(x,sample,'fourier1');
f4 = fit(x,sample,'fourier4');
f8 = fit(x,sample,'fourier8');

plot(x,sample)
hold on
plot(f1,'r')
plot(f4,'k')
plot(f8,'g')
lgd = legend('EEG signal','1','4','8','FontSize',10);
title(lgd,'Degree')
xlabel('Time (ms)','FontSize',16)
ylabel('Voltage (mV)','FontSize',16)
hold off

%% Curve fitting sum of sin
data = A160108_lh_lists;
sample = data(:,:,1);
sample = sample(:,1);
x = 1:200;
x = x';
f1 = fit(x,sample,'sin1');
f3 = fit(x,sample,'sin1');
f6 = fit(x,sample,'sin1');

plot(x,sample)
hold on
plot(f1,'r')
plot(f4,'k')
plot(f8,'g')
lgd = legend('EEG signal','1','3','6','FontSize',10);
title(lgd,'Degree')
xlabel('Time (ms)','FontSize',16)
ylabel('Voltage (mV)','FontSize',16)
hold off
%% Time series

plot(sample,'.-')

