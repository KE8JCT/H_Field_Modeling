%Follows directly from p.270 of ulaby

clear a, z

I = 1; %Current, Amps
N_1 = 10; %number of turns in loop 1
N_2 = 10; %number of turns in loop 2
a = linspace(0,10,10); %radius of loops, m
z = linspace(0,1,100); %separation distance, m
mu_r = .999992;
mu_0 = pi*4e-7;
mu = mu_0 * mu_r;
I_2 = N_1 * I / N_2; %current through second coil from transformer equations

L_12 = zeros(length(a), length(z));
for k=1:length(a)
L_12(k,:) = pi * N_2 * a(k)^3 ./ (3*mu.*z.^3); %mutual inductance, units H
Wm(k,:) = L_12(k,:).* 1/2 * I_2^2; %Magnetic Energy Stored in inductor
end


plot(z, Wm);
title("Magnetic Energy Stored in Inductor as a function of path distance")
xlabel("Distance between two coils, meters")
ylabel("Magnetic Energy, J")