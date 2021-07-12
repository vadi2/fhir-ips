Profile: DiagnosticReportUvIps
Parent: DiagnosticReport
Id: DiagnosticReport-uv-ips
Title: "DiagnosticReport - IPS"
Description: "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the DiagnosticReport resource to use the specific IPS profiles for observations and coded data types."
* . MS
* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* category 1..1 MS
* category only CodeableConceptIPS
* code only CodeableConceptIPS
* code MS
* subject 1.. MS
* subject only Reference(PatientUvIps or Group)
* subject.reference 1.. MS
* effective[x] 1..1 MS
* effective[x] only dateTime or Period
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps or CareTeam)
* performer MS
* specimen only Reference(SpecimenUvIps)
* specimen ^mustSupport = false
* result MS
* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this.resolve()"
* result ^slicing.rules = #open
* result ^short = "Observation results included in the diagnostic report."
* result ^definition = "Observation results included in the diagnostic report."
* result contains observation-results 0..* MS
* result[observation-results] only Reference(ObservationResultsLaboratoryUvIps or ObservationResultsPathologyUvIps or ObservationResultsRadiologyUvIps or ObservationResultsUvIps)