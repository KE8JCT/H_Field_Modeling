%Directly from Ulaby textbook

%Example 5-3: p. 247, Magnetic field of a circular loop

I = 1:10; %A, current
a = 1/3; %m, radius of loop
z = linspace(0,1,1000); %m, distance away from center of loop
H1 = zeros(length(I), length(z));
for k=1:length(I)
H1(k,:) = I(k) * a^2 ./ (2.*(a^2 + z.^2).^3/2);
end
I = 5;
a = linspace(1,10,10);
H2 = zeros(length(a), length(z));
z2 = linspace(0,2,1000);
for k=1:length(a)
H2(k,:) = I * a(k)^2 ./ (2.*(a(k)^2 + z2.^2).^3/2);
end
tiledlayout(2,1)
nexttile
plot(z,H1);
title("Plot for Distance (m) over Magnetic Field Intensity H");
xlabel("distance from center, m");
ylabel("Magnetic Field Intensity, A/m");
legend(["1A","2A","3A","4A","5A","6A","7A","8A","9A","10A"]);
nexttile
plot(z2,H2)
title("Plot for Distance (m) over Magnetic Field Intensity H (varying radius, 1A)");
xlabel("distance from center, m");
ylabel("Magnetic Field Intensity, A/m");
legend(["1m","2m",">2m",])
%"1m","2m","3m","4m","5m","6m","7m",
%"","","","","","","",