// UC1 – Beispiele

Instance: Patient-UC1-20250205
InstanceOf: CHNotfallpassPatient
Title: "UC1 Patientin"
Description: "Patientin im Notfallpass (UC1)"
Usage: #example
* identifier[0].system = "urn:oid:2.16.756.5.30.1.123.100.1" // Beispiel Versicherungs-ID System
* identifier[0].value = "756.9217.1234.56"
* active = true
* name[0].family = "Müller"
* name[0].given[0] = "Anna"
* gender = #female
* birthDate = "1958-04-12"
* telecom[0].system = #phone
* telecom[0].value = "+41 31 555 44 33"
* communication[0].language = $lang#de-CH "Deutsch (Schweiz)"
* contact[0].relationship[0] = $v3-ActCode#SPS "spouse"
* contact[0].name.family = "Müller"
* contact[0].name.given[0] = "Hans"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+41 31 555 44 34"

Instance: RelatedPerson-UC1-EmergencyContact-20250205
InstanceOf: CHNotfallpassRelatedPerson
Title: "UC1 Notfallkontakt (Ehemann)"
Usage: #example
* patient = Reference(Patient-UC1-20250205)
* relationship[0] = $v3-ActCode#SPS "spouse"
* name.family = "Müller"
* name.given[0] = "Hans"
* telecom[0].system = #phone
* telecom[0].value = "+41 31 555 44 34"

Instance: Condition-UC1-CHF-20250205
InstanceOf: CHNotfallpassCondition
Title: "UC1 Herzinsuffizienz"
Usage: #example
* subject = Reference(Patient-UC1-20250205)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code = $sct#42343007 "Congestive heart failure (disorder)"

Instance: AllergyIntolerance-UC1-Penicillin-20250205
InstanceOf: CHNotfallpassAllergyIntolerance
Title: "UC1 Penicillin-Allergie"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code = $sct#294505008 "Allergy to penicillin (finding)"
* patient = Reference(Patient-UC1-20250205)
* reaction[0].manifestation[0] = $sct#39579001 "Anaphylaxis (disorder)"

Instance: Medication-UC1-Bisoprolol-20250205
InstanceOf: $CHCoreMedication
Title: "UC1 Bisoprolol"
Usage: #example
* code = $atc#C07AB07 "Bisoprolol"

Instance: MedicationStatement-UC1-Bisoprolol-20250205
InstanceOf: CHNotfallpassMedicationStatement
Title: "UC1 Bisoprolol 5 mg täglich"
Usage: #example
* subject = Reference(Patient-UC1-20250205)
* medicationReference = Reference(Medication-UC1-Bisoprolol-20250205)
* status = #active
* dosage[0].text = "5 mg einmal täglich per os"

Instance: Observation-UC1-BP-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC1 Blutdruck"
Usage: #example
* status = #final
* code = $loinc#85354-9 "Blood pressure panel with all children"
* subject = Reference(Patient-UC1-20250205)
* effectiveDateTime = "2025-02-05T08:15:00+01:00"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 95 'mm[Hg]' "mm[Hg]"
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 60 'mm[Hg]' "mm[Hg]"

Instance: Observation-UC1-HR-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC1 Herzfrequenz"
Usage: #example
* status = #final
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient-UC1-20250205)
* effectiveDateTime = "2025-02-05T08:15:00+01:00"
* valueQuantity = 110 '/min' "/min"

Instance: Observation-UC1-Creatinine-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC1 Kreatinin"
Usage: #example
* status = #final
* code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient-UC1-20250205)
* effectiveDateTime = "2025-02-05T08:45:00+01:00"
* valueQuantity = 1.2 'mg/dL' "mg/dL"

Instance: Observation-UC1-TnT-hs-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC1 Troponin T (hs)"
Usage: #example
* status = #final
* code = $loinc#67151-1 "Troponin T.cardiac [Mass/volume] in Serum or Plasma by High sensitivity method"
* subject = Reference(Patient-UC1-20250205)
* effectiveDateTime = "2025-02-05T08:50:00+01:00"
* valueQuantity = 45 'ng/L' "ng/L"

Instance: DocumentReference-UC1-Summary-20250205
InstanceOf: CHNotfallpassDocumentReference
Title: "UC1 Notfallpass PDF"
Usage: #example
* status = #current
* type = $sct#371535009 "Clinical summary report (record artifact)"
* subject = Reference(Patient-UC1-20250205)
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.title = "Notfallpass – Zusammenfassung"
* content[0].attachment.url = "https://example.org/docs/uc1-notfallpass.pdf"

// UC2 – Beispiele

Instance: Patient-UC2-20250205
InstanceOf: CHNotfallpassPatient
Title: "UC2 Patient"
Usage: #example
* identifier[0].system = "urn:oid:2.16.756.5.30.1.123.100.1"
* identifier[0].value = "756.1234.5678.90"
* active = true
* name[0].family = "Rossi"
* name[0].given[0] = "Luca"
* gender = #male
* birthDate = "1990-09-21"
* communication[0].language = $lang#it-CH "Italiano (Svizzera)"
* contact[0].relationship[0] = $v3-ActCode#PRN "parent"
* contact[0].name.family = "Rossi"
* contact[0].name.given[0] = "Maria"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+41 91 555 77 66"

Instance: RelatedPerson-UC2-EmergencyContact-20250205
InstanceOf: CHNotfallpassRelatedPerson
Title: "UC2 Notfallkontakt (Mutter)"
Usage: #example
* patient = Reference(Patient-UC2-20250205)
* relationship[0] = $v3-ActCode#PRN "parent"
* name.family = "Rossi"
* name.given[0] = "Maria"
* telecom[0].system = #phone
* telecom[0].value = "+41 91 555 77 66"

Instance: Observation-UC2-BP-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC2 Blutdruck"
Usage: #example
* status = #final
* code = $loinc#85354-9
* subject = Reference(Patient-UC2-20250205)
* effectiveDateTime = "2025-02-05T13:12:00+01:00"
* component[0].code = $loinc#8480-6
* component[0].valueQuantity = 80 'mm[Hg]' "mm[Hg]"
* component[1].code = $loinc#8462-4
* component[1].valueQuantity = 50 'mm[Hg]' "mm[Hg]"

Instance: Observation-UC2-HR-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC2 Herzfrequenz"
Usage: #example
* status = #final
* code = $loinc#8867-4
* subject = Reference(Patient-UC2-20250205)
* effectiveDateTime = "2025-02-05T13:12:00+01:00"
* valueQuantity = 126 '/min' "/min"

Instance: Observation-UC2-SpO2-20250205
InstanceOf: CHNotfallpassObservation
Title: "UC2 Sauerstoffsättigung"
Usage: #example
* status = #final
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* subject = Reference(Patient-UC2-20250205)
* effectiveDateTime = "2025-02-05T13:12:00+01:00"
* valueQuantity = 88 '%' "%"

Instance: AllergyIntolerance-UC2-Peanut-20250205
InstanceOf: CHNotfallpassAllergyIntolerance
Title: "UC2 Erdnussallergie"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code = $sct#91935009 "Allergy to peanut (finding)"
* patient = Reference(Patient-UC2-20250205)

Instance: Condition-UC2-RibFractures-20250205
InstanceOf: CHNotfallpassCondition
Title: "UC2 Rippenfrakturen"
Usage: #example
* subject = Reference(Patient-UC2-20250205)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* code = $sct#125605004 "Fracture of rib (disorder)"

Instance: DocumentReference-UC2-Prehospital-20250205
InstanceOf: CHNotfallpassDocumentReference
Title: "UC2 Präklinische Übergabe"
Usage: #example
* status = #current
* type = $sct#371530004 "Emergency department note (record artifact)"
* subject = Reference(Patient-UC2-20250205)
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.title = "Präklinische Übergabe – Rettungsdienst"
* content[0].attachment.url = "https://example.org/docs/uc2-prehospital.pdf"
