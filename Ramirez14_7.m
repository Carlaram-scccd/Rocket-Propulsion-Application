% Rocket Propulsion Application – Multiple Thrust Values
% Define constants
m = 1000;      % mass (kg)
c = 500;       % air resistance coefficient (N*s/m)
v0 = 0;        % initial velocity (m/s)

% Thrust values to test
F = [20000 40000 60000 80000];

% Time span for plotting
tspan = [0 10];

% Prepare figure
figure
hold on

% Loop through thrust values
for k = 1:length(F)
    f = F(k);
    [t,v] = ode45(@(t,v) (f - c*v)/m, tspan, v0);
    plot(t, v, 'LineWidth', 2)
end

% Plot formatting
grid on
title("Velocity of Rocket for Various Thrust Forces")
xlabel("Time (s)")
ylabel("Velocity (m/s)")
legend("f = 20,000 N", "f = 40,000 N", "f = 60,000 N", "f = 80,000 N")
hold off
