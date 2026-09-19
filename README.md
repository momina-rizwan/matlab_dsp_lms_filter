# LMS Adaptive Filter Noise Cancellation (DSP Project)

This project demonstrates noise cancellation on a sinusoidal signal using the **Least Mean Squares (LMS)** adaptive filtering algorithm implemented in MATLAB.

---

## 📌 Overview

The goal of this project is to recover a clean desired signal that has been corrupted by additive Gaussian noise. An adaptive FIR filter updates its coefficients iteratively using the LMS algorithm to minimize the error between the desired signal and the estimated output.

### Key Features
* **Desired Signal Generation**: Generates a clean 50 Hz sinusoidal wave (`D`).
* **Noise Corruption**: Corrupts the desired signal with zero-mean Gaussian random noise (`A`).
* **LMS Filtering Engine**: Implements weight updates based on the step-size parameter $\mu$ and filter order $M$.
* **4-Panel Visualization**: Plots the clean signal, noisy input, estimated output, and residual error signal side-by-side.

---

## ⚙️ Algorithm Parameters

| Parameter | Symbol | Value | Description |
| :--- | :--- | :--- | :--- |
| **Time Vector** | `t` | `0.001 : 0.001 : 1` | 1-second time domain sampled at 1 kHz |
| **Desired Signal** | `D` | $2 \cdot \sin(2\pi \cdot 50 \cdot t)$ | 50 Hz pure sine wave |
| **Filter Length** | `M` | `25` | Number of adaptive filter taps |
| **Step Size** | $\mu$ | `0.0005` | Learning rate for weight convergence |

---

## 📁 Repository Structure

* `dspproject.m`: The primary MATLAB script containing signal generation, LMS loop execution, and plotting commands.
* `untitled.m`: Auxiliary workspace/testing file.

---

## 🚀 How to Run

1. Open **MATLAB**.
2. Open the file `dspproject.m`.
3. Click **Run** (or press `F5`) in the MATLAB toolbar.
4. A figure window will appear showing four subplots:
   1. **Desired Signal**: Clean reference sine wave.
   2. **Signal Corrupted with Noise**: Input signal sent to the filter.
   3. **Estimation Signal**: Filtered output tracking the desired wave.
   4. **Error Signal**: Difference between estimated and clean signals.
