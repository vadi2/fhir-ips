Profile: ObservationResultsUvIps
Parent: Observation
Id: Observation-results-uv-ips
Title: "Observation Results - IPS"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
* . MS
* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* category only CodeableConceptIPS
* category MS
* code only CodeableConceptIPS
* code MS
* subject 1.. MS
* subject only Reference(PatientUvIps or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps or CareTeam or PatientUvIps or RelatedPerson)
* performer MS
* value[x] MS
* hasMember only Reference(ObservationResultsUvIps or QuestionnaireResponse or MolecularSequence)
* hasMember MS
* component MS