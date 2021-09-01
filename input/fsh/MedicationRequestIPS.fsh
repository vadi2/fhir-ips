Profile: MedicationRequestIPS
Parent: MedicationRequest
Id: MedicationRequest-uv-ips
Title: "Medication Request - IPS"
Description: "This profile represents the constraints applied to the MedicationRequest resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication request is represented in the patient summary as an instance of a MedicationRequest resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a medication request related to the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* status MS
* status ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* medication[x] MS
* medication[x] from MedicationStatementCodesUvIps (preferred)
* medication[x] ^definition = "Identifies the medication being administered or the reason for absent or unknown Medication. This is either a link to a resource representing the details of the medication or a simple attribute carrying a code. To improve global interoperability is strongly encouraged that the reference to a medication resource is used, limiting the usage of the medicationCodeableConcept only to the cases in which no other information than a simple code is available."
* medication[x] ^binding.description = "The type of medication"
* medicationReference MS
* medicationReference only Reference(MedicationIPS)
* medicationCodeableConcept MS
* medicationCodeableConcept only CodeableConceptIPS
* medicationCodeableConcept from MedicationStatementCodesUvIps (preferred)
* subject only Reference(PatientUvIps)
* subject MS
* subject.reference 1.. MS
* requester MS
* dosageInstruction MS
* dosageInstruction.text MS
* dosageInstruction.timing MS
* dosageInstruction.route only CodeableConceptIPS
* dosageInstruction.route MS
* dosageInstruction.route from RouteOfAdminUvIps (preferred)
* dosageInstruction.route ^binding.description = "EDQM Standards Terms"
* dispenseRequest.validityPeriod 1..1 MS
* dispenseRequest.validityPeriod.extension ..1 MS
* dispenseRequest.validityPeriod.extension only $data-absent-reason
* dispenseRequest.validityPeriod.extension ^short = "validityPeriod absence reason"
* dispenseRequest.validityPeriod.extension ^definition = "Provides a reason why the validityPeriod is missing."
