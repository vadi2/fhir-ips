Profile: AllergyIntoleranceUvIps
Parent: AllergyIntolerance
Id: AllergyIntolerance-uv-ips
Title: "Allergy Intolerance (IPS)"
Description: """This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances (conditions) for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy."""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a record of an allergy or intolerance of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* extension contains AbatementDateTimeUvIps named abatement-datetime ..1 MS
* extension[abatement-datetime] ^short = "Abatement datetime"
* extension[abatement-datetime] ^definition = "The date or estimated date that the condition resolved or went into remission."
* clinicalStatus only CodeableConceptIPS
* clinicalStatus MS
* verificationStatus only CodeableConceptIPS
* verificationStatus MS
* verificationStatus ^comment = "In the scope of the IPS the entered-in-error concept is not allowed."
* type MS
* criticality MS
* code MS
* code only CodeableConceptIPS
* code from AllergyIntoleranceSubstanceConditionUvIps (preferred)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "AllergyIntoleranceCode"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition."
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.description = "Discriminated by the bound value set"
* code.coding ^slicing.rules = #open
* code.coding contains
    allergyIntoleranceGPSCode ..* MS and
    absentOrUnknownAllergyIntolerance ..1 MS
* code.coding[allergyIntoleranceGPSCode] from AllergyintolerancesubstanceconditionGPS (required)
* code.coding[allergyIntoleranceGPSCode] ^short = "Code for allergy or intolerance from the SNOMED CT GPS code set"
* code.coding[allergyIntoleranceGPSCode] ^definition = "Code for an allergy or intolerance statement that is selected from the SNOMED CT GPS code set."
* code.coding[allergyIntoleranceGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[allergyIntoleranceGPSCode] ^binding.extension.valueString = "GPS"
* code.coding[allergyIntoleranceGPSCode] ^binding.description = "Codes for allergy or intolerance from the SNOMED CT GPS code set"
* code.coding[absentOrUnknownAllergyIntolerance] from NoAllergiesInfoUvIps (required)
* code.coding[absentOrUnknownAllergyIntolerance] ^short = "Code for absent or unknown allergy or intolerance"
* code.coding[absentOrUnknownAllergyIntolerance] ^definition = "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement).  This describes a categorical negated statement (e.g., \"No known allergy\")."
* code.coding[absentOrUnknownAllergyIntolerance] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code.coding[absentOrUnknownAllergyIntolerance] ^binding.extension.valueString = "absentOrUnknownAllergy"
* code.coding[absentOrUnknownAllergyIntolerance] ^binding.description = "negation/exclusion codes for reporting no known allergies or not available data."
* patient only Reference(PatientUvIps)
* patient MS
* patient.reference 1.. MS
* onsetDateTime only dateTime
* onsetDateTime MS
* asserter MS
* reaction MS
* reaction.manifestation only CodeableConceptIPS
* reaction.manifestation MS
* reaction.manifestation ^slicing.discriminator.type = #pattern
* reaction.manifestation ^slicing.discriminator.path = "$this"
* reaction.manifestation ^slicing.description = "Discriminated by the bound value set"
* reaction.manifestation ^slicing.rules = #open
* reaction.manifestation contains allergyIntoleranceReactionManifestationGPSCode 0..1 MS
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] from AllergyReactionGpsUvIps (required)
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^short = "Code for the allergy or intolerance reaction manifestation from the SNOMED CT GPS code set"
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^definition = "Code for an allergy or intolerance reaction manifestation statement that is selected from the SNOMED CT GPS code set."
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* reaction.manifestation[allergyIntoleranceReactionManifestationGPSCode] ^binding.extension.valueString = "ReactionManifestationGPS"
* reaction.onset MS
* reaction.severity MS