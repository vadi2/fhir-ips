Profile: SpecimenUvIps
Parent: Specimen
Id: Specimen-uv-ips
Title: "Specimen (IPS)"
Description: "This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "Minimal specimen attributes, usable for the laboratory results section and entry of a patient summary."
* . MS
* type 1.. MS
* type only CodeableConceptIPS
* type from ResultsSpecimenTypeGpsUvIps (extensible)
* type ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type ^binding.extension.valueString = "SpecimenType"
* subject only Reference(PatientUvIps)
* subject MS
* subject.reference 1.. MS
* collection MS
* collection.method only CodeableConceptIPS
* collection.method MS
* collection.method from ResultsSpecimenCollectionMethodGpsUvIps (extensible)
* collection.bodySite only CodeableConceptIPS
* collection.bodySite MS
* collection.bodySite from SNOMEDCTBodyStructures (extensible)
* collection.fastingStatus[x] only CodeableConceptIPS or Duration
* collection.fastingStatus[x] MS