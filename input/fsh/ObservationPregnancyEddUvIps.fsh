Profile: ObservationPregnancyEddUvIps
Parent: Observation
Id: Observation-pregnancy-edd-uv-ips
Title: "Observation (Pregnancy: EDD)"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* code 1..1 MS
* code only CodeableConceptIPS
* code from ExpectedDeliveryDateMethodUvIps (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject 1.. MS
* subject only Reference(PatientUvIps)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* valueDateTime only dateTime
* valueDateTime MS
* bodySite ..0
* bodySite ^mustSupport = false
* method ..0
* method ^mustSupport = false
* specimen ..0
* specimen ^mustSupport = false
* device ..0
* device ^mustSupport = false
* referenceRange ..0
* referenceRange ^mustSupport = false
* component ..0
* component ^mustSupport = false