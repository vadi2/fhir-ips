Profile: ObservationResultsRadiologyUvIps
Parent: ObservationResultsUvIps
Id: Observation-results-radiology-uv-ips
Title: "Observation Results: Radiology - IPS"
Description: """This profile represents the constraints applied to the Observation resource by the IPS project, which specifies a radiology observation for the international patient summary based on the FHIR standard R4. 

This observation may represent the conclusions of a diagnostic procedure such a Chest RX, or it may group the set of results produced by that single or multi-modality procedure. 

In the latter case, the main observation (this one) carries the overall conclusion of the study and/or a global interpretation by the observer of the study as value of this observation; and may references the atomic results of the study as "child observations".

It allows also providing details about the related study using the partOf element referring to an ImagingStudy resource.
"""
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* obeys hasMemberOrComponent and hasComponentifValueStringEmpty
* partOf only Reference(ImagingStudyUvIps)
* partOf MS
* status = #final (exactly)
* status MS
* status ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension.valueString = "default: final"
* status ^definition = "The status of the result value. Only final results feed patient summaries."
* category only CodeableConceptIPS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "A code that classifies the general type of observation being made. In this profile, fixed to \"imaging\"."
* category contains radiology 1..1 MS
* category[radiology] only CodeableConceptIPS
* category[radiology] = $observation-category#imaging
* code only CodeableConceptIPS
* code MS
* code from ResultsRadObservationUvIps (extensible)
* code ^label = "Diagnostic Procedure Code"
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\r\nIn this profile the code of the containing observation (the organizer result in the CDA implementation) may correspond to the procedure code (e.g. Chest X-Ray)."
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject only Reference(PatientUvIps)
* subject MS
* subject ^definition = "The patient, or group of patients, location, or device whose characteristics (direct or indirect) are described by the observation and into whose record the observation is placed.  Comments: Indirect characteristics may be those of a specimen, fetus, donor, other observer (for example a relative or EMT), or any observation made about the subject.\r\n\r\nIn this profile is constrained to the patient"
* effective[x] MS
* effective[x] obeys ips-1
* performer 1.. MS
* performer only Reference(PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps)
* valueString only string
* valueString MS
* valueString ^label = "Overall Conclusion"
* bodySite only CodeableConceptIPS
* bodySite MS
* bodySite from TargetSiteCodeUvIps (example)
* bodySite ^label = "body site"
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* device only Reference(DeviceObserverUvIps)
* device MS
* hasMember only Reference(ObservationResultsRadiologyUvIps or ObservationResultsUvIps)
* hasMember MS
* hasMember.reference MS
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
* component contains
    observationText 0..* MS and
    observationCode 0..* MS and
    numericQuantityMeasurement 0..* MS and
    numericRangeMeasurement 0..* MS and
    numericRatioMeasurement 0..* MS and
    numericSampledDataMeasurement 0..* MS
* component[observationText] ^short = "Observation Text"
* component[observationText].code only CodeableConceptIPS
* component[observationText].code MS
* component[observationText].code from ResultsRadTxtObsGpsDicomLoincUvIps (extensible)
* component[observationText].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[observationText].code ^binding.extension.valueString = "ObservationCode"
* component[observationText].value[x] 1.. MS
* component[observationText].value[x] only string
* component[observationCode] ^short = "Observation Code"
* component[observationCode].code only CodeableConceptIPS
* component[observationCode].code MS
* component[observationCode].code from ResultsRadObservationUvIps (extensible)
* component[observationCode].value[x] 1.. MS
* component[observationCode].value[x] only CodeableConceptIPS
* component[numericQuantityMeasurement] ^short = "Observation Measurement, including linear, area and volume quantity measurements"
* component[numericQuantityMeasurement].code only CodeableConceptIPS
* component[numericQuantityMeasurement].code MS
* component[numericQuantityMeasurement].code from ResultsRadMeasuresObservationGpsDicomUvIps (extensible)
* component[numericQuantityMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericQuantityMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericQuantityMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericQuantityMeasurement].value[x] 1.. MS
* component[numericQuantityMeasurement].value[x] only QuantityIPS
* component[numericRangeMeasurement] ^short = "Observation Measurement, including linear, area and volume range measurements"
* component[numericRangeMeasurement].code only CodeableConceptIPS
* component[numericRangeMeasurement].code MS
* component[numericRangeMeasurement].code from ResultsRadMeasuresObservationGpsDicomUvIps (extensible)
* component[numericRangeMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericRangeMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericRangeMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericRangeMeasurement].value[x] 1.. MS
* component[numericRangeMeasurement].value[x] only RangeIPS
* component[numericRatioMeasurement] ^short = "Observation Measurement, including linear, area and volume ratio measurements"
* component[numericRatioMeasurement].code only CodeableConceptIPS
* component[numericRatioMeasurement].code MS
* component[numericRatioMeasurement].code from ResultsRadMeasuresObservationGpsDicomUvIps (extensible)
* component[numericRatioMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericRatioMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericRatioMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericRatioMeasurement].value[x] 1.. MS
* component[numericRatioMeasurement].value[x] only RatioIPS
* component[numericSampledDataMeasurement] ^short = "Observation Measurement, including linear, area and volume sampled data measurements"
* component[numericSampledDataMeasurement].code only CodeableConceptIPS
* component[numericSampledDataMeasurement].code MS
* component[numericSampledDataMeasurement].code from ResultsRadMeasuresObservationGpsDicomUvIps (extensible)
* component[numericSampledDataMeasurement].code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component[numericSampledDataMeasurement].code ^binding.extension.valueString = "ObservationMeasurements"
* component[numericSampledDataMeasurement].code ^binding.description = "Codes identifying numeric measurements"
* component[numericSampledDataMeasurement].value[x] 1.. MS
* component[numericSampledDataMeasurement].value[x] only SampledData

Invariant: hasMemberOrComponent
Description: "component and hasMember are mutually exclusive"
Severity: #error
Expression: "hasMember.empty() or component.empty()"

Invariant: hasComponentifValueStringEmpty
Description: "component is required if valueString is empty"
Severity: #error
Expression: "(component.exists() and valueString.empty()) or valueString.exists()"

Invariant: ips-1
Description: "Datetime must be at least to day."
Severity: #error
Expression: "$this.ofType(dateTime).empty() or ($this as dateTime).toString().length() >= 8"
XPath: "not(boolean(effectiveDateTime)) or f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"