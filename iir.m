clc; clear all; close all;
fp = 1000;
fs=1100;
sf=20000;
wp = 2*pi*fp/sf;
ws = 2*pi*fs/sf;
rp=1;
rs=20;

[n, wc] = buttord(wp,ws,rp,rs);
[b, a] = butter(n,wc);
[b1,a1] = impinvar(b,a);
%[b1,a1] = bilinear(b,a,sf);
[h,w] = freqz(b1,a1);
mag = 20*log10(abs(h));
plot((w/pi),mag,'red');
hold all;

[n, wc] = cheb1ord(wp,ws,rp,rs,'s');
[b, a] = cheby1(n,rp,wc);
[b1,a1] = impinvar(b,a);
%[b1,a1] = bilinear(b,a,sf);
[h,w] = freqz(b1,a1);
mag = 20*log10(abs(h));
plot((w/pi),mag,'green');
hold all;

[n, wc] = cheb2ord(wp,ws,rp,rs),'s';
[b, a] = cheby2(n,rp,wc);
[b1,a1] = impinvar(b,a);
%[b1,a1] = bilinear(b,a,sf);
[h,w] = freqz(b1,a1);
mag = 20*log10(abs(h));
plot((w/pi),mag,'blue');
hold off;

legend('butterworth', 'chebyshev1', 'chebyshev2');
xlabel('frequency');
ylabel('magnitude');
title('low fass');

