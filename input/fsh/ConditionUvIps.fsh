Profile: ConditionUvIps
Parent: Condition
Id: Condition-uv-ips
Title: "Condition (IPS)"
Description: "This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "Representation of a problem in the international patient summary"
* . MS
* . ^short = "Documentation of a health problem of the patient"
* clinicalStatus 1.. MS
* clinicalStatus only CodeableConceptIPS
* verificationStatus only CodeableConceptIPS
* verificationStatus MS
* verificationStatus ^comment = "This element is labeled as a modifier because the status contains the code refuted and entered-in-error that mark the Condition as not currently valid."
* category only CodeableConceptIPS
* category MS
* category from ProblemTypeUvIps (extensible)
* category ^definition = "A category assigned to the condition. In this profile, a health problem of the patient, therefore a 'problem-list-item'.\r\n"
* category ^comment = "In this profile, Condition represents a health problem of the patient. Therefore one of the category value(s) must be problem-list-item."
* severity only CodeableConceptIPS
* severity MS
* severity from ProblemSeverityUvIps (preferred)
* severity ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* severity ^binding.extension.valueString = "ConditionSeverity"
* code MS
* code only CodeableConceptIPS
* code ^definition = "Identification of the condition, problem or diagnosis or recording of \"problem absent\" or of \"problems unknown\"."
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.description = "Discriminated by the bound value set"
* code.coding ^slicing.rules = #open
* code.coding contains
    problemGPSCode ..* MS and
    absentOrUnknownProblem ..1 MS
* code.coding[problemGPSCode] from CoreProblemListFindingSituationEventGpsUvIps (required)
* code.coding[problemGPSCode] ^short = "Code for a problem from the SNOMED CT GPS code set"
* code.coding[problemGPSCode] ^definition = "Code for a clinical problem that is selected from the SNOMED CT GPS code set."
* code.coding[problemGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[problemGPSCode] ^binding.extension.valueString = "problemGPSCode"
* code.coding[problemGPSCode] ^binding.description = "problemGPS"
* code.coding[absentOrUnknownProblem] from NoProbsInfoUvIps (required)
* code.coding[absentOrUnknownProblem] ^short = "Code for absent problem or for unknown problem"
* code.coding[absentOrUnknownProblem] ^definition = "Code representing the statement \"absent problem\" or the statement \"problems unknown\""
* code.coding[absentOrUnknownProblem] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[absentOrUnknownProblem] ^binding.extension.valueString = "absentOrUnknownProblem"
* code.coding[absentOrUnknownProblem] ^binding.description = "Absent problem or unknown problem"
* bodySite only CodeableConceptIPS
* bodySite from SNOMEDCTBodyStructures (example)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"
* subject only Reference(PatientUvIps)
* subject MS
* subject.reference 1.. MS
* onset[x] MS
* onset[x] only dateTime or Period
* onsetDateTime MS
* onsetPeriod ^mustSupport = false
* abatement[x] MS
* abatement[x] only dateTime or Period
* abatementDateTime MS
* abatementPeriod ^mustSupport = false
* asserter MS
* asserter ^definition = "Individual who is making the condition statement.\r\nInformation source."