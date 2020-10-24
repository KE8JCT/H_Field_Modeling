%Incidence angle and reflection coefficent from air into water

e0 = 8.854e-12
e2 = e0*81
e1 = e0*1.0006
theta = linspace(0,90,1000)

r_parallel_mag = zeros(1,length(theta));
r_parallel = zeros(1,length(theta));

r_perpendicular_mag = zeros(1,length(theta));
r_perpendicular = zeros(1,length(theta));

for k=1:length(theta)
r_parallel = ((-e2/e1)*cosd(theta(k)) + sqrt((e2/e1) - sind(theta(k))^2)) / ((e2/e1)*cosd(theta(k))+sqrt((e2/e1) - sind(theta(k))^2))
r_parallel_mag(1,k) = abs(r_parallel);

r_perpendicular = (cosd(theta(k)) - sqrt((e2/e1) - sind(theta(k))^2)) / (cosd(theta(k))+sqrt((e2/e1) - sind(theta(k))^2))
r_perpendicular_mag(1,k) = abs(r_perpendicular);
end

plot(theta,r_parallel_mag)
hold on
plot(theta, r_perpendicular_mag, "--")
title("Graph of reflection coefficient through distilled water")
xlabel("Angle, degrees")
ylabel("Magnitude of Reflection Coefficient")
legend("Parallel Reflection","Perpendicular Coefficient")
hold off