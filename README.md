# Bachelor-Degree-Thesis / Tesi di Laurea Triennale

<p align="center">
  <b>[ <a href="#english">English</a> ] | [ <a href="#italiano">Italiano</a> ]</b>
</p>

---

<a name="english"></a>
## English Version

# Development of a MATLAB Simulation Model for the Lateral Dynamics of an Autonomous Vehicle

Official repository of the Bachelor's degree thesis in **Computer, Biomedical, and Telecommunications Engineering** at the **University of Naples "Parthenope"**.

**Advisor:** Prof. Gaetano Tartaglione
**Academic Year:** 2024/2025

### Project Overview
This project focuses on the study, modeling, and numerical simulation of the **lateral dynamics of an autonomous vehicle** using **MATLAB/Simulink**. The main objective is to analyze vehicle behavior in realistic driving scenarios, evaluating stability against steering maneuvers and external disturbances (such as side-wind gusts) to validate advanced control strategies for ADAS systems.

### Methodological Approach and Mathematical Models
The work addresses the problem by decomposing the vehicle's degrees of freedom:
**Bicycle Model (2-DoF):** Simplification of vehicle dynamics focusing on lateral motions (lateral velocity and yaw rate).
**Non-linear Model:** Implementation of the equations of motion coupled with the **Pacejka** empirical tire formula to capture non-linear behavior under limit conditions.

**Linear Model (LTI):** Linearization of the system around an equilibrium condition at a constant longitudinal velocity for optimal controller synthesis.
**Feedback Control:** Design and testing of an optimal controller based on optimization techniques and Linear Matrix Inequalities (LMIs) for side-wind disturbance rejection.

### Main Results
**Open-Loop Analysis:** Highlighted the typical non-minimum phase system response (initial undershoot of lateral velocity) and compared the response between the linear and non-linear models.
**Closed-Loop Control:** The implementation of the controller demonstrated excellent disturbance rejection capabilities, successfully damping oscillations induced by side-wind gusts and keeping trajectory errors and steering angles within predefined safety limits.

---

<a name="italiano"></a>
## 🇮🇹 Versione Italiana

# Sviluppo di un Modello di Simulazione MATLAB per la Dinamica Laterale di un Veicolo Autonomo

Repository ufficiale della tesi di laurea triennale in **Ingegneria Informatica, Biomedica e delle Telecomunicazioni** presso l'**Università degli Studi di Napoli "Parthenope"**.

**Relatore:** Chiar.mo Prof. Gaetano Tartaglione
**Anno Accademico:** 2024/2025

### Panoramica del Progetto
Questo progetto si concentra sullo studio, la modellazione e la simulazione numerica della **dinamica laterale di un veicolo autonomo** in ambiente **MATLAB/Simulink**. L'obiettivo principale è analizzare il comportamento del veicolo in scenari di guida realistici, valutandone la stabilità a fronte di manovre di sterzata e disturbi esterni (come raffiche di vento laterale), al fine di validare strategie di controllo avanzate per sistemi ADAS.

### Approccio Metodologico e Modelli Matematici
Il lavoro affronta il problema partendo da una scomposizione dei gradi di libertà del veicolo:
**Modello a Bicicletta (2-DoF):** Semplificazione della dinamica del veicolo focalizzata sui moti laterali (velocità laterale e velocità di imbardata/yaw rate).
**Modello Non Lineare:** Implementazione delle equazioni del moto accoppiate alla formula empirica degli pneumatici di **Pacejka** per catturare il comportamento non lineare in condizioni limite.

**Modello Lineare (LTI):** Linearizzazione del sistema attorno a una condizione di equilibrio a velocità longitudinale costante per la sintesi di controllori ottimali.
**Controllo in Retroazione:** Progettazione e test di un controllore ottimo basato su tecniche di ottimizzazione e disuguaglianze matriciali lineari (LMI) per la reiezione dei disturbi da vento laterale.

### Risultati Principali
**Analisi Open Loop:** È stata evidenziata la tipica risposta da sistema a fase non minima (sottoelongazione iniziale della velocità laterale) e confrontata la risposta tra il modello lineare e quello non lineare.
**Controllo Closed Loop:** L'implementazione del controllore ha dimostrato un'ottima capacità di reiezione dei disturbi, riuscendo a smorzare rapidamente le oscillazioni indotte da raffiche di vento laterale e a mantenere l'errore di traiettoria e gli angoli di sterzo entro i limiti di sicurezza prestabiliti.



##  Struttura della Repository
```text
├── docs/                # Relazione di tesi in formato PDF
├── models/              # Modelli e schemi Simulink (.slx)            # Script MATLAB di inizializzazione parametri e plotting
└── README.md            # Documentazione del progetto
