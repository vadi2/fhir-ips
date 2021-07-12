Profile: MediaObservationUvIps
Parent: Media
Id: Media-observation-uv-ips
Title: "Media observation - Results: Laboratory, Media"
Description: "This profile constrains the Media resource (which is a specialized observation)."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This specialized observation is used to convey illustrative media content."
* . MS
* status = #completed (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* status ^definition = "The status of the result value. Only final observation are eligible to the international patient summary."
* type only CodeableConceptIPS
* type MS
* subject 1.. MS
* subject only Reference(PatientUvIps)
* subject.reference 1.. MS
* operator MS
* device MS
* content MS