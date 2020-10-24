%Plane-wave modeling for 1kHz magnetic field wave.
%BPSK should be added later; how will that play a part?
%analyze vector part later, also include sketch of what this looks like
%(christmas tree)

zz = linspace(0,10,100);
tt = linspace(0,1000,10000);
mm = linspace(0,60,1000);
H = zeros(length(zz),length(tt));
mag = 100;
B = zeros(1,length(zz));
for n=1:length(zz)
    for m=1:length(tt)
    H(n,m) = mag * exp(-.126*zz(n)) * cos(pi*2e3*tt(m) - .126*zz(n) + pi/12);
    end
end
for n=1:length(mm)
   B(n) = mag * exp(-.126*mm(n)) * cos(pi*2e3*mm(n) - .126*mm(n) + pi/12);
end

%{
surf(H,'edgecolor', 'none');
title("H-Field Plane Wave as a function of distance and time")
xlabel("Time (sec)");
ylabel("distance from source (z)");
zlabel("Amplitude");
%}

plot(mm,B)
title("Simplified Damped Wave")
xlabel("Time and Distance")
ylabel("Amplitude")
