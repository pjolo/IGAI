# Use Cases

## UC1: Bewusstlose Patientin in der Notaufnahme

Eine 67-jährige Patientin wird vom Rettungsdienst bewusstlos in die Notaufnahme gebracht. Dank dem Notfallpass sind folgende Informationen unmittelbar verfügbar: chronische Diagnosen (z.B. [Herzinsuffizienz NYHA II](https://pjolo.github.io/IGAI/Condition-Condition-UC1-CHF-20250205.html)), relevante Allergien (z.B. [Penicillin-Allergie](AllergyIntolerance-UC1-Penicillin-20250205.html)), aktuelle Medikation (z.B. [Bisoprolol 5 mg täglich](MedicationStatement-UC1-Bisoprolol-20250205.html)), Vitalwerte bei Ankunft (z.B. [RR: 95/60 mmHg](Observation-UC1-BP-20250205.html), [HF: 110/min](Observation-UC1-HR-20250205.html)), sowie Laborwerte (z.B. [Kreatinin: 1.2 mg/dL](Observation-UC1-Creatinine-20250205.html), [Troponin T hochsensitiv: 45 ng/L](Observation-UC1-TnT-hs-20250205.html)). Der hinterlegte **Notfallkontakt** (Ehemann) ist sofort erreichbar ([Kontakt: Ehemann Müller](Observation-UC1-TnT-hs-20250205.htmlRelatedPerson-UC1-EmergencyContact-20250205.html)) und ergänzt anamnestische Angaben. Die Dokumentreferenz zum Notfallpass ([Notfallpass PDF](Observation-UC1-TnT-hs-20250205.htmlDocumentReference-UC1-Summary-20250205.html)) ermöglicht eine rasche Übersicht über Vorerkrankungen und Allergien.

Ablauf:
- Sichtung Notfallpass-Informationen durch Triage.
- Überprüfung Allergie/Medikation vor Analgesie.
- Labor und Monitoring; Therapieanpassung anhand Vital/Laborwerte.
- Kontaktaufnahme mit Notfallkontakt zur Ergänzung der Anamnese.

Genutzte Ressourcen/Prozesse:
- Patient, RelatedPerson (Notfallkontakt), Condition, AllergyIntolerance, MedicationStatement, Observation (Vital/Labor), DocumentReference, Encounter.

## UC2: Polytrauma – präklinische Daten an Spital übergeben

Ein 35-jähriger Motorradfahrer wird nach einem Frontalzusammenstoss vom Rettungsdienst versorgt. Vor Ort werden lebensrettende Massnahmen durchgeführt und essenzielle Vitalparameter erhoben ([RR: 80/50 mmHg](Observation-UC2-BP-20250205.html), [HF: 126/min](Observation-UC2-HR-20250205.html), [SpO₂: 88%](Observation-UC2-SpO2-20250205.html)). Eine bekannte [Erdnussallergie](AllergyIntolerance-UC2-Peanut-20250205.html) ist im Notfallpass dokumentiert, was die Auswahl von Medikamenten beeinflusst. Der hinterlegte **Notfallkontakt** (Mutter) wird informiert ([Kontakt: Frau Rossi](RelatedPerson-UC2-EmergencyContact-20250205.html)). Klinisch gesicherte Verletzungen werden später im Schockraum als [multiple Rippenfrakturen](Condition-UC2-RibFractures-20250205.html) dokumentiert. Eine präklinische Zusammenfassung wird als [Dokumentreferenz](DocumentReference-UC2-Prehospital-20250205.html) übermittelt.

Ablauf:
- Präklinische Erfassung von Vitalparametern.
- Prüfung Allergien und sichere Pharmakotherapie.
- Übergabe der Daten an das Spital und Kontaktaufnahme mit Angehörigen.

Genutzte Ressourcen/Prozesse:
- Patient, RelatedPerson, AllergyIntolerance, Observation (Vital), Condition, DocumentReference, Encounter.
