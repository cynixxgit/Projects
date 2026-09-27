# PC Performance Telemetry Analyzer

A system performance monitoring and analysis project that collects realtime PC telemetry using Python and analyzes the recorded data in MATLAB.

The project collects CPU utilization, CPU frequency, and memory utilization at one-second intervals, stores the measurements in a CSV file, and uses MATLAB to visualize system behavior and calculate performance statistics.

## Overview

```text
PC System Metrics
       ↓
Python + psutil
       ↓
CSV Data Logging
       ↓
MATLAB
       ↓
Statistical Analysis + Visualization
```

Python handles the data acquisition and logging while MATLAB is used for post-processing and graphic visualization.

## Features

- Samples system telemetry once per second
- Records CPU utilization
- Records current CPU frequency
- Records RAM utilization
- Automatically exports measurements to CSV
- Imports telemetry data into MATLAB
- Generates time-series performance plots
- Calculates average and peak system metrics

## Technologies

- **Python**
- **MATLAB**
- **psutil**
- **CSV**

## Data Collection

The Python telemetry logger uses the `psutil` library to collect:


Time
CPU Utilization %
CPU Frequency MHz
RAM Utilization %

A typical output file has the following structure:

```text
Time_Sec,CPU_Usage_Percent,CPU_Frequency_MHz,RAM_Usage_Percent
1,8.2,3600.0,31.2
2,12.5,3725.0,31.3
3,24.1,4100.0,31.4
```

## MATLAB Analysis

The generated CSV file is imported into MATLAB for analysis.

MATLAB is used to visualize:

- CPU utilization over time
- CPU frequency over time
- RAM utilization over time

The analysis also calculates:

- Average CPU utilization
- Peak CPU utilization
- Average CPU frequency
- Peak CPU frequency
- Average RAM utilization
- Peak RAM utilization

## Example Workflow

1. Run the Python program `hardware_monitor.py`.
2. Allow the program to collect system data.
3. The measurements are exported to `hardware_log.csv`.
4. Import `hardware_log.csv` into MATLAB.
5. Run the MATLAB analysis script.
6. Review the generated performance plots and statistics.

## Project Structure

```text
PC-Performance-Telemetry-Analyzer/
│
├── telemetry.py
├── analyze_hardware.m
├── hardware_log.csv
└── README.md
```

### `hardware_monitor.py`

Collects system performance data using `psutil` and exports the measurements to a CSV file.

### `analyze_hardware.m`

Imports the CSV dataset, calculates summary statistics, and generates performance plots.

### `hardware_log.csv`

Contains statistics recorded during after running the `hardware_monitor` program.

## Installation

Install the required Python dependency:

```bash
pip install psutil
```

Then run:

```bash
python telemetry.py
```

After data collection is complete, run `analyze_hardware.m` in MATLAB to analyze the generated dataset.



## Future Improvements

Potential future additions include:

- Longer configurable monitoring periods
- Adjustable sampling intervals
- Automated workload comparisons
- CPU temperature monitoring
- CPU power monitoring
- GPU utilization monitoring
- Real-time visualization
- Automated performance reports

## Notes

CPU utilization, CPU frequency, and RAM utilization are collected through `psutil` and operating-system interfaces. This project does not directly interface with physical temperature, voltage, or power sensors.
