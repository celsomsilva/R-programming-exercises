# 📊 Assignment 1: Air Pollution

This project contains three functions designed to analyze air pollution data from a set of 332 CSV files.

## Objectives

- Read a directory containing CSV files with air quality data.  
- Calculate the mean of pollutants (sulfate or nitrate) across specified monitors.  
- Report the number of completely observed cases (no missing values) in each file.  
- Calculate the correlation between sulfate and nitrate for monitors with sufficient complete cases.

## Functions

### `pollutantmean(directory, pollutant, id)`

Calculates the mean of a pollutant (`"sulfate"` or `"nitrate"`) across specified monitors.

**Parameters:**  
- `directory`: (string) Path to the directory containing the CSV files.  
- `pollutant`: (string) Name of the pollutant to analyze (`"sulfate"` or `"nitrate"`).  
- `id`: (integer vector) Monitor ID numbers to include in the calculation.

**Example usage:**

```r
pollutantmean("specdata", "sulfate", 1:10)
```

---

### `complete(directory, id = 1:332)`

Reads files from the directory and returns a data frame with the number of complete cases (no missing values) for each monitor.

**Parameters:**  
- `directory`: Path to the data files.  
- `id`: Vector of monitor ID numbers to be analyzed (default: `1:332`).

**Example usage:**

```r
complete("specdata", c(2, 4, 8, 10, 12))
```

---

### `corr(directory, threshold = 0)`

Calculates the correlation between `sulfate` and `nitrate` for monitors where the number of complete cases is above the specified threshold.

**Parameters:**  
- `directory`: Directory containing the CSV files.  
- `threshold`: Minimum number of complete cases required to include the monitor.

**Example usage:**

```r
corr("specdata", threshold = 150)
```

---

## 🗂️ Expected Data Structure

- Data should be located in the `specdata` directory (or another specified directory), containing up to 332 CSV files named as `001.csv`, `002.csv`, ..., `332.csv`.

---

## 🚀 How to Run

1. Place the CSV files in the appropriate directory (e.g., `specdata/`).  
2. Load the script containing the functions in R.  
3. Execute the functions as shown in the examples.

---

## 📎 Requirements

- R installed (version >= 3.0)  
- Basic packages (`stats`, `utils`)

---

## 👨‍💻 Author

This project is part of the **R Programming** course from **Coursera / Johns Hopkins University**.
