// Import der Aliase
// Hier werden NUR Aliase verwendet, keine erneuten Alias-Definitionen.

Profile: CHCorePractitionerEPR
Parent: $CHCorePractitioner
Id: ch-core-practitioner-epr
Title: "CH Core Practitioner EPR"
Description: "Schweizer Profil für Gesundheitsfachpersonen im EPD-Kontext (GLN, ggf. ZSR, Name, Kontaktinformationen, usw.). Siehe fhir.ch/ig/ch-core."

* identifier 1..* MS
* identifier[gln] 1..1
* identifier[gln].system = "urn:oid:2.51.1.3"
* identifier[gln].value 1..1
* identifier[zsr] 0..1
* identifier[zsr].system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* name 1..* MS
* name.family 1..1 MS
* name.given 1..1 MS
* telecom 0..* MS
* telecom.system from http://terminology.hl7.org/CodeSystem/contact-point-system (required)
* telecom.value 1..1 MS
* telecom.extension contains http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-46-emailcategory named emailcategory 0..*
* address 0..* MS
* gender 0..1 MS
* gender ^short = "männlich | weiblich | other (kein unknown erlaubt)"
* gender = #male or #female or #other
* birthDate 0..1
* qualification 0..* MS
* communication 0..* MS

Profile: CHNotfallpassPatient
Parent: $CHCorePatient
Id: ch-notfallpass-patient
Title: "Notfallpass Patient"
Description: "Patient:in im Notfallpass, basiert auf CH Core Patient. Enthält Notfallkontakt via Patient.contact."
* active 1..1
* name 1..*
* telecom 0..*
* contact 1..* MS
* contact.relationship 1..*
* contact.relationship from NotfallpassContactRole (extensible)
* communication.language 1..1 MS
* communication.language from NotfallpassLanguages (extensible)

Profile: CHNotfallpassRelatedPerson
Parent: $CHCoreRelatedPerson
Id: ch-notfallpass-relatedperson
Title: "Notfallpass RelatedPerson (Notfallkontakt)"
Description: "Optional separate Resource für Notfallkontakte, referenziert vom Patient."
* patient 1..1 MS
* relationship 1..* MS
* relationship from NotfallpassContactRole (extensible)

Profile: CHNotfallpassCondition
Parent: $CHCoreCondition
Id: ch-notfallpass-condition
Title: "Notfallpass Condition"
Description: "Relevante bestehende Diagnosen/Probleme im Notfallpass."
* code 1..1 MS
* subject 1..1 MS
* verificationStatus MS
* clinicalStatus MS

Profile: CHNotfallpassAllergyIntolerance
Parent: $CHCoreAllergyIntolerance
Id: ch-notfallpass-allergyintolerance
Title: "Notfallpass AllergyIntolerance"
Description: "Allergien/Unverträglichkeiten im Notfallpass."
* clinicalStatus 1..1 MS
* verificationStatus 1..1 MS
* code 1..1 MS

Profile: CHNotfallpassMedicationStatement
Parent: $CHCoreMedicationStatement
Id: ch-notfallpass-medicationstatement
Title: "Notfallpass MedicationStatement"
Description: "Medikation im Notfallpass (eingenommen/gegeben)."
* medication[x] 1..1 MS
* subject 1..1 MS
* dosage 0..*

Profile: CHNotfallpassObservation
Parent: Observation
Id: ch-notfallpass-observation
Title: "Notfallpass Observation"
Description: "Vital- und Laborwerte im Notfallpass."
* status = #final (exactly)
* code 1..1 MS
* subject 1..1 MS
* effective[x] 0..1
* value[x] 0..1

Profile: CHNotfallpassDocumentReference
Parent: $CHCoreDocumentReference
Id: ch-notfallpass-documentreference
Title: "Notfallpass DocumentReference"
Description: "Dokumentenreferenzen (z.B. PDF-Zusammenfassung) im Notfallpass."
* status 1..1
* type 0..1
* content 1..*
* content.attachment.contentType 1..1
* content.attachment.url 0..1

// Explizite Aufnahme externer Profile im IG (ohne Spezialisierung), damit sie im IG sichtbar sind.
Profile: UseOfCHCorePatient
Parent: $CHCorePatient
Id: use-of-ch-core-patient
Title: "Verwendung CH Core Patient"
Description: "Explikative Aufnahme des CH Core Patient Profils im IG."

Profile: UseOfCHCoreObservation
Parent: Observation
Id: use-of-ch-core-observation
Title: "Verwendung CH Core Observation"
Description: "Explikative Aufnahme des CH Core Observation Profils im IG."

Profile: UseOfCHCoreAllergyIntolerance
Parent: $CHCoreAllergyIntolerance
Id: use-of-ch-core-allergyintolerance
Title: "Verwendung CH Core AllergyIntolerance"
Description: "Explikative Aufnahme des CH Core AllergyIntolerance Profils im IG."

Profile: UseOfCHCoreCondition
Parent: $CHCoreCondition
Id: use-of-ch-core-condition
Title: "Verwendung CH Core Condition"
Description: "Explikative Aufnahme des CH Core Condition Profils im IG."

Profile: UseOfCHCoreMedicationStatement
Parent: $CHCoreMedicationStatement
Id: use-of-ch-core-medicationstatement
Title: "Verwendung CH Core MedicationStatement"
Description: "Explikative Aufnahme des CH Core MedicationStatement Profils im IG."

Profile: UseOfCHCoreDocumentReference
Parent: $CHCoreDocumentReference
Id: use-of-ch-core-documentreference
Title: "Verwendung CH Core DocumentReference"
Description: "Explikative Aufnahme des CH Core DocumentReference Profils im IG."
