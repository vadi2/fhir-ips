Profile: MedicationStatementCrossBorderIPS
Parent: MedicationStatementIPS
Id: MedicationStatement-cross-border-uv-ips
Title: "Medication Statement - Cross Border - IPS"
Description: "This profile represents the constraints applied to MedicationStatementIPS applied to the MedicationStatement resource for the cross-border IPS document use case by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* medication[x] 1..1 MS
* medicationReference only Reference(MedicationIPS)
* medicationCodeableConcept only CodeableConceptIPS
* medicationCodeableConcept from MedicationStatementCodesUvIps (extensible)
