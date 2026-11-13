# Bachelor-Degree-Thesis
Sviluppo in MATLAB/Simulink di un modello di dinamica laterale (2-DoF) per veicoli autonomi. Confronto tra modello non lineare (Pacejka) e lineare (LTI), con sintesi di un controllore ottimo H_infty in retroazione per la reiezione del vento laterale.

# Sviluppo di un Modello di Simulazione MATLAB per la Dinamica Laterale di un Veicolo Autonomo

Repository ufficiale della tesi di laurea triennale in **Ingegneria Informatica, Biomedica e delle Telecomunicazioni** presso l'**Università degli Studi di Napoli "Parthenope"**.

* **Relatore:** Chiar.mo Prof. Gaetano Tartaglione.
* **Anno Accademico:** 2024/2025.

---

## Panoramica del Progetto
Questo progetto si concentra sullo studio, la modellazione e la simulazione numerica della **dinamica laterale di un veicolo autonomo** in ambiente **MATLAB/Simulink**. L'obiettivo principale è analizzare il comportamento del veicolo in scenari di guida realistici, valutandone la stabilità a fronte di manovre di sterzata e disturbi esterni (come raffiche di vento laterale), al fine di validare strategie di controllo avanzate per sistemi ADAS.

## Approccio Metodologico e Modelli Matematici
Il lavoro affronta il problema partendo da una scomposizione dei gradi di libertà del veicolo:
**Modello a Bicicletta (2-DoF):** Semplificazione della dinamica del veicolo focalizzata sui moti laterali (velocità laterale e velocità di imbardata/yaw rate).

**Modello Non Lineare:** Implementazione delle equazioni del moto accoppiate alla formula empirica degli pneumatici di **Pacejka** per catturare il comportamento non lineare in condizioni limite.

**Modello Lineare (LTI):** Linearizzazione del sistema attorno a una condizione di equilibrio a velocità longitudinale costante per la sintesi di controllori ottimali.

**Controllo in Retroazione:** Progettazione e test di un controllore ottimo basato su tecniche di ottimizzazione e disuguaglianze matriciali lineari (LMI) per la reiezione dei disturbi da vento laterale.

## Risultati Principali
**Analisi Open Loop:** È stata evidenziata la tipica risposta da sistema a fase non minima (sottoelongazione iniziale della velocità laterale) e confrontata la risposta tra il modello lineare e quello non lineare.

**Controllo Closed Loop:** L'implementazione del controllore ha dimostrato un'ottima capacità di reiezione dei disturbi, riuscendo a smorzare rapidamente le oscillazioni indotte da raffiche di vento laterale e a mantenere l'errore di traiettoria e gli angoli di sterzo entro i limiti di sicurezza prestabiliti.

##  Struttura della Repository
```text
├── docs/                # Relazione di tesi in formato PDF
├── models/              # Modelli e schemi Simulink (.slx)
├── scripts/             # Script MATLAB di inizializzazione parametri e plotting
└── README.md            # Documentazione del progetto
