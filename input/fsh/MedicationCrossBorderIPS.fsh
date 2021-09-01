Profile: MedicationCrossBorderIPS
Parent: MedicationIPS
Id: Medication-cross-border-uv-ips
Title: "Medication - Cross Border - IPS"
Description: """This profile represents the constraints in addition to MedicationIPS applied to the Medication resource for the cross-border IPS document use case by the International Patient Summary (IPS) FHIR Implementation Guide. A medication is described in the patient summary as an instance of a Medication resource constrained by this profile."""
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* code 1..1 MS
* code from MedicationCodesUvIps (extensible)
