Profile: ObservationResultsPathologyUvIps
Parent: ObservationResultsUvIps
Id: Observation-results-pathology-uv-ips
Title: "Observation Results: Pathology - IPS"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies in a patient summary."
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the Observation resource to represent a pathology in vitro study. In case of a multiple-observation study, the results of the study appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the study.  The top-level observation may carry a conclusion in the value element and or a global interpretation by the producer of the study, in the comment element."
* . MS
* obeys ips-2
* . ^short = "Pathology result for a simple test or for a panel/study"
* . ^definition = "This observation may represent the result of a simple pathology test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and references the atomic results of the study as \"has-member\" child observations"
* . ^comment = "Represents either a lab simple observation or the group of observations produced by a pathology study."
* category only CodeableConceptIPS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"laboratory\"."
* category ^comment = "\"laboratory\" includes laboratory medicine and pathology"
* category contains laboratory 1..1 MS
* category[laboratory] only CodeableConceptIPS
* category[laboratory] = $observation-category#laboratory
* code only CodeableConceptIPS
* code MS
* code from ResultsPathObservationUvIps (extensible)
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".  In this profile this code represents either a simple laboratory test or a laboratory study with multiple child observations"
* code ^comment = "In the context of this Observation-laboratory-uv-ips profile, when the observation plays the role of a grouper of member sub-observations, the code represent the group (for instance a panel code). In case no code is available, at least a text shall be provided."
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject only Reference(PatientUvIps)
* subject MS
* subject ^definition = "The patient, or group of patients, location, or device whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed.  Comments: Indirect characteristics may be those of a specimen, fetus, donor, other observer (for example a relative or EMT), or any observation made about the subject.\r\n\r\nIn this profile is constrained to the patient"
* performer 1.. MS
* performer only Reference(PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps)
* value[x] MS
* valueString MS
* valueString only string
* valueRange only RangeIPS
* valueRatio only RatioIPS
* valueTime only time
* valueDateTime only dateTime
* valuePeriod only Period
* valueQuantity MS
* valueQuantity only QuantityIPS
* valueCodeableConcept MS
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from ResultsCodedValuesPathologyGpsUvIps (preferred)
* specimen only Reference(SpecimenUvIps)
* specimen MS
* hasMember only Reference(ObservationResultsPathologyUvIps or ObservationResultsUvIps)
* hasMember MS
* hasMember ^definition = "A reference to another Observation profiled by Observation-results-pathology-uv-ips. The target observation is considered as a sub-observation of the current one, which plays the role of a grouper"
* hasMember ^comment = "This element is used in the context of international patient summary when there is a need to group a collection of observations, because they belong to the same panel, or because they share a common interpretation comment, or a common media attachment (illustrative image or graph). In these cases, the current observation profiled as observation-laboratory-uv-trillium2 is the grouper, and its set of sub-observations are related observations using the type \"has-member\" and the profile observation-member-laboratory-uv-trillium2."
* hasMember.reference MS