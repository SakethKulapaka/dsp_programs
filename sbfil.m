clc; clear all; close all;
fp1=100;
fp2=4500;
fs1=1000;
fs2=4000;
fs=20000;
wp1=(2*fp1)/fs;
wp2=(2*fp2)/fs;
ws1=(2*fs1)/fs;
ws2=(2*fs2)/fs;

wp=[wp1,wp2];
ws=[ws1,ws2];

rp=3;
rs=30;
[n ,wc] = buttord(wp,ws,rp,rs);
[b, a]=butter(n,wc,'bandpass');
[h,w]=freqz(b,a);
mag = 20*log10(abs(h));
plot((w/pi),mag,'yellow','linewidth',1.5)
hold all; 

[n ,wc] = cheb1ord(wp,ws,rp,rs);
[b,a] = cheby1(n, rp, wc, 'bandpass');
[h,w] = freqz(b,a);
mag = 20*log10(abs(h));
plot((w/pi),mag,'blue','linewidth',1.5)
hold all;

[n ,wc] = cheb2ord(wp,ws,rp,rs);
[b,a] = cheby2(n, rp, wc, 'bandpass');
[h,w] = freqz(b,a);
mag = 20*log10(abs(h));
plot((w/pi),mag,'red','linewidth',1.5)
hold off;
legend('butterworth' , 'cheb1' , 'cheb2' );

