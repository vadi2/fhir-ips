Profile: ObservationTobaccoUseUvIps
Parent: Observation
Id: Observation-tobaccouse-uv-ips
Title: "Observation (SH: tobacco use)"
Description: "This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* code 1..1 MS
* code only CodeableConceptIPS
* code = $loinc#72166-2
* subject 1.. MS
* subject only Reference(PatientUvIps)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept MS
* valueCodeableConcept from $current-smoking-status-uv-ips (required)
* component ..0
* component ^mustSupport = false