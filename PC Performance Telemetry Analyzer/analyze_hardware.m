% Import telemetry data
data = readtable("hardware_log.csv");

% ---- CPU UTILIZATION ----
figure
plot(data.Time_Sec, data.CPU_Usage_Percent, '-o')
xlabel("Time (seconds)")
ylabel("CPU Utilization (%)")
title("CPU Utilization Over Time")
grid on

% ---- CPU FREQUENCY ----
figure
plot(data.Time_Sec, data.CPU_Frequency_MHz, '-o')
xlabel("Time (seconds)")
ylabel("CPU Frequency (MHz)")
title("CPU Frequency Over Time")
grid on

% ---- RAM UTILIZATION ----
figure
plot(data.Time_Sec, data.RAM_Usage_Percent, '-o')
xlabel("Time (seconds)")
ylabel("RAM Utilization (%)")
title("RAM Utilization Over Time")
grid on

% ---- STATISTICS ----
fprintf("Average CPU Usage: %.2f%%\n", mean(data.CPU_Usage_Percent))
fprintf("Peak CPU Usage: %.2f%%\n", max(data.CPU_Usage_Percent))

fprintf("Average CPU Frequency: %.2f MHz\n", mean(data.CPU_Frequency_MHz))
fprintf("Peak CPU Frequency: %.2f MHz\n", max(data.CPU_Frequency_MHz))

fprintf("Average RAM Usage: %.2f%%\n", mean(data.RAM_Usage_Percent))
fprintf("Peak RAM Usage: %.2f%%\n", max(data.RAM_Usage_Percent))