Profile: ObservationAlcoholUseUvIps
Parent: Observation
Id: Observation-alcoholuse-uv-ips
Title: "Observation - SH: Alcohol Use"
Description: "This profile constrains the Observation resource to represent alcohol use assessment in a patient summary."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* code 1..1 MS
* code only CodeableConceptIPS
* code = $loinc#74013-4
* subject 1.. MS
* subject only Reference(PatientUvIps)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* valueQuantity only QuantityIPS
* valueQuantity MS
* component ..0
* component ^mustSupport = false