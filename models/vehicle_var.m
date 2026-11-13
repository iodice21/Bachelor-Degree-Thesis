
clear;
clc;
close all;

% Inizializzazione delle variabili

% Massa del veicolo (kg)
M = 1200;

% Momento d'inerzia di imbardata (kg*m^2)
I = 1500;

% Distanza dal centro di massa all'asse anteriore (m)
lf = 0.92;

% Distanza dal centro di massa all'asse posteriore (m)
lr = 1.38;

% Velocità longitudinale (m/s)
vx = 22;

% Efficienza del vento laterale
eta = 0.15;

% Parametri per l'asse anteriore
byf = 10;
cyf = 1.9;
dyf = 2.5;
eyf = 0.97;

% Parametri per l'asse posteriore
byr = 10;
cyr = 1.9;
dyr = 1.6;
eyr = 0.97;

% Rigidità di deriva dell'asse anteriore (N/rad)
Ca_f = 125000;

% Rigidità di deriva dell'asse posteriore (N/rad)
Ca_r = 80000;


% Matrice di stato A
A = [ -(Ca_f + Ca_r)/(M*vx),  -(Ca_f*lf - Ca_r*lr)/(M*vx)-vx,  0,  0;
    -(Ca_f*lf - Ca_r*lr)/(I*vx), -(Ca_f*lf^2 + Ca_r*lr^2)/(I*vx),  0,  0;
    0, 1, 0, 0;
    1, 0, vx, 0;
    ];

% Matrice del vento laterale F (trasposta)
F = [0; 0; 0; eta];

%Matrice C
C = [
1, 0, 0, 0;
0, 0, 0, 1
];

%Matrice D
D = [ 0 ; 0 ];

% Matrice di controllo (input = angolo di sterzo δ)
B = [
    Ca_f / M;
    Ca_f * lf / I;
    0;
    0
];

K_inf = [-0.162, -0.895, -9.794, -1.394]

save('matrici.mat', 'A', 'B', 'C', 'D');
load('matrici.mat');

