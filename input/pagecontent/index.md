# Notfallpass Schweiz – Implementierungsleitfaden

Dieser Leitfaden definiert den Notfallpass als kompaktes, standardisiertes Austauschformat für kritische Gesundheitsinformationen, die im Akut- und Notfallkontext schnell verfügbar sein müssen. Ziel ist die sichere, interoperable Bereitstellung zentraler Informationen (Identität, Notfallkontakt, Allergien, Diagnosen, Medikamente, Vitalzeichen, relevante Befunde und Laborwerte) entlang der Versorgungskette in der Schweiz.

## Zielsetzung
- Bereitstellung eines minimalen, aber aussagekräftigen Datensatzes für Notfallsituationen.
- Nutzung schweizweit etablierter **CH Core**-Profile zur Sicherstellung der Interoperabilität.
- Verwendung etablierter Terminologien (SNOMED CT, LOINC, ATC etc.), wo verfügbar und sinnvoll.
- Klare Abbildung eines **Notfallkontakts** (Patient.contact und optional RelatedPerson) für rasche Kommunikation.

## Abdeckung
Der Leitfaden deckt:
- Patient:in mit Identifikatoren (z.B. Versichertennummern), Notfallkontakt, Kommunikationssprache(n).
- Allergien/Unverträglichkeiten, bestehende Diagnosen/Probleme, Medikation.
- Klinische Befunde, Vitalparameter, Laborwerte.
- Dokumentreferenzen (z.B. Notfallzusammenfassung als PDF/ CDA).

## Schweizer Besonderheiten
- Primäre Verwendung der **CH Core**-Profile (z.B. CH Core Patient, CH Core Practitioner, CH Core Organization).
- Identifikatoren und Adressen gemäss schweizerischen Konventionen.
- Sprachcodes gemäss lokalen Anforderungen (de-CH, fr-CH, it-CH, rm-CH).
- Nutzung des imposeProfile-Prinzips, wo sinnvoll, um Konformität zu sichern (z.B. Pflicht auf CH Core Profile).

## Externe Profile (Verwendung)
- CH Core Patient, Practitioner, PractitionerRole, Organization, Encounter, Condition, AllergyIntolerance, MedicationStatement/MedicationRequest, Observation, DocumentReference.
- Zusätzlich definierte schmale Projektprofile für Notfallpass-spezifische Constraints (Namensraum dieses IG), jedoch ohne den Begriff „IPS“ in Profilnamen, um Verwechslungen zu vermeiden.

Weiterführende Informationen zu Anwendungsfällen sind unter „Use Cases“ beschrieben.
