Profile: MedicationStatementIPS
Parent: MedicationStatement
Id: MedicationStatement-uv-ips
Title: "Medication Statement (IPS)"
Description: "This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a medication statement related to the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* status MS
* status ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* medication[x] MS
* medication[x] from MedicationCodesUvIps (example)
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #closed
* medication[x] ^definition = "Identifies the medication being administered or the reason for absent or unknown Medication. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "The type of medication"
//* medicationReference contains medicationReference
* medicationReference only Reference(MedicationIPS)

//* medicationCodeableConcept contains medicationCodeableConcept
* medicationCodeableConcept only CodeableConceptIPS

* medicationCodeableConcept.coding 1.. MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.description = "Discriminated by the bound value set"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    absentOrUnknownProblem 0..1 MS
* medicationCodeableConcept.coding[absentOrUnknownProblem] from NoMedsInfoUvIps (required)
* medicationCodeableConcept.coding[absentOrUnknownProblem] ^short = "Code for absent or unknown medication"
* medicationCodeableConcept.coding[absentOrUnknownProblem] ^definition = "Code for a negated/excluded medication statement.  This describes a categorical negated statement (e.g., \"No known medications\")."
* medicationCodeableConcept.coding[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* medicationCodeableConcept.coding[absentOrUnknownProblem] ^binding.extension.valueString = "UnknownMedicationCode"
* medicationCodeableConcept.coding[absentOrUnknownProblem] ^binding.description = "Representation of unknown or absent medications"

* subject only Reference(PatientUvIps)
* subject MS
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* informationSource MS
* dosage MS
* dosage.text MS
* dosage.timing MS
* dosage.route only CodeableConceptIPS
* dosage.route MS
* dosage.route from RouteOfAdminUvIps (preferred)
* dosage.route ^binding.description = "EDQM Standards Terms"