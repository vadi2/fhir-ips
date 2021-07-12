Profile: AllergyIntoleranceCrossBorderUvIps
Parent: AllergyIntoleranceUvIps
Id: AllergyIntolerance-cross-border-uv-ips
Title: "Allergy Intolerance - Cross Border - IPS"
Description: """This profile represents the constraints in addition to AllergyIntoleranceUvIps applied to the AllergyIntolerance resource for the cross-border IPS document use case by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* code 1..1 MS
* code.coding 1..* MS
* code.coding ^slicing.rules = #closed
