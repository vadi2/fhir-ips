Profile: ProcedureUvIps
Parent: Procedure
Id: Procedure-uv-ips
Title: "Procedure - IPS"
Description: "This profile represents the constraints applied to the Procedure resource by the IPS project, which specifies an entry of the History of Procedure for the international patient summary based on the FHIR standard R4."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* status MS
* code MS
* code only CodeableConceptIPS
* code from ProceduresUvIps (preferred)
* code ^definition = "Identification of the procedure or recording of \"absence of relevant procedures\" or of \"procedures unknown\"."
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ProcedureCode"
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.description = "Discriminated by the bound value set"
* code.coding ^slicing.rules = #open
* code.coding contains absentOrUnknownProcedure ..1 MS
* code.coding[absentOrUnknownProcedure] from NoProceduresInfoUvIps (required)
* code.coding[absentOrUnknownProcedure] ^short = "Code for absent problem or for unknown procedure"
* code.coding[absentOrUnknownProcedure] ^definition = "Code representing the statement \"absent problem\" or the statement \"procedures unknown\""
* code.coding[absentOrUnknownProcedure] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[absentOrUnknownProcedure] ^binding.extension.valueString = "absentOrUnknownProcedure"
* code.coding[absentOrUnknownProcedure] ^binding.description = "A code to identify absent or unknown procedures"
* subject only Reference(PatientUvIps)
* subject MS
* subject ^definition = "The person on which the procedure was performed."
* subject.reference 1.. MS
* performed[x] 1..1 MS
* performed[x].extension contains $data-absent-reason named data-absent-reason ..1 MS
* performed[x].extension[data-absent-reason] ^short = "performed[x] absence reason"
* performed[x].extension[data-absent-reason] ^definition = "Provides a reason why the performed is missing."
* asserter ^mustSupport = false
* performer ^mustSupport = false
* performer.actor only Reference(PatientUvIps or RelatedPerson or DeviceObserverUvIps or PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps)
* performer.actor ^mustSupport = false
* performer.onBehalfOf only Reference(OrganizationUvIps)
* performer.onBehalfOf ^mustSupport = false
* bodySite only CodeableConceptIPS
* bodySite MS
* bodySite from SNOMEDCTBodyStructures (example)
* bodySite ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension.valueString = "BodySite"