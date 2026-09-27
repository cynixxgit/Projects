import psutil
import csv
import os

# Save file to PC
filename = os.path.join(
    os.path.expanduser("~"),
    "Desktop",
    "hardware_log.csv"
)

with open(filename, "w", newline="") as file:
    writer = csv.writer(file)

    writer.writerow([
        "Time_Sec",
        "CPU_Usage_Percent",
        "CPU_Frequency_MHz",
        "RAM_Usage_Percent"
    ])

    print("Recording PC telemetry for 30 seconds...")

    for t in range(30):

        cpu_usage = psutil.cpu_percent(interval=1)

        cpu_freq = psutil.cpu_freq()
        cpu_frequency = cpu_freq.current if cpu_freq else 0

        ram_usage = psutil.virtual_memory().percent

        writer.writerow([
            t + 1,
            cpu_usage,
            round(cpu_frequency, 1),
            ram_usage
        ])

        print(
            f"{t + 1}s | "
            f"CPU: {cpu_usage:.1f}% | "
            f"Clock: {cpu_frequency:.0f} MHz | "
            f"RAM: {ram_usage:.1f}%"
        )

print("\nDone!")
print(f"File saved here: {filename}")
