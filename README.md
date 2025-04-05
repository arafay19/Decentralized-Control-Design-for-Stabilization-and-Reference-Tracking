# Decentralized-Control-Design-for-Stabilization-and-Reference-Tracking

Project Overview
This project focuses on designing a decentralized linear state feedback controller for a large coupled system with eigenvalues at 4, -9, and -1. The goal is to stabilize the system by relocating all eigenvalues to -11 and ensuring reference tracking using feedforward gain matrices. The system is decomposed into two subsystems to simplify control design and numerical complexity.

Key Components
Decentralized Controller Design:

The system is divided into two subsystems: one with stable eigenvalues (-9, -1) and the other with an unstable eigenvalue (4).

A sparse feedback matrix F is designed to achieve eigenvalue placement. The feedback gains are calculated as:

F1 = [225/13, -4/13, 0]

F2 = [0, 0, 10]

Feedforward Gain Matrix V:

A feedforward gain matrix V is designed to ensure reference tracking (y = r).

The matrix V is computed using the steady-state condition and the invertibility of the intermediate matrix Fyr. The numerical solution yields:

Copy
V = [-1.1400 -0.3800; -0.4231 -3.8077]  
Simulation:

Two separate models are simulated: one for the stable subsystem and another for the unstable subsystem.

Step input responses are analyzed for both open-loop and closed-loop configurations.

The closed-loop system demonstrates successful reference tracking, with the feedforward matrix V playing a critical role in achieving this behavior.

Repository Contents
Report: Detailed explanation of the control design, mathematical derivations, and simulation results.

Matlab Files: Code for implementing the decentralized controller, computing feedback and feedforward gains, and simulating the system.

Figures: Plots showing open-loop and closed-loop responses, reference tracking performance, and state evolution.

Dependencies
MATLAB (for simulation and matrix computations)

How to Use
Clone the repository.

Open the provided MATLAB files to explore the controller design and simulation.

Refer to the report for a detailed explanation of the methodology and results.


