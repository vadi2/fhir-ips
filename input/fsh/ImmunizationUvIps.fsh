Profile: ImmunizationUvIps
Parent: Immunization
Id: Immunization-uv-ips
Title: "Immunization (IPS)"
Description: """This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.

It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party."""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a record of a vaccination of the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* . ^definition = "Describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party and may include vaccine reaction information and what vaccination protocol was followed"
* status MS
* vaccineCode 1..1 MS
* vaccineCode only CodeableConceptIPS
* vaccineCode from VaccinesUvIps (preferred)
* vaccineCode ^short = "Vaccine that was administered or was to be administered.Several kinds of vaccine product coding could be provided.\r\n\r\n     The IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunised is provided; or the known absent / unknown code.\r\n\r\n     Other coded information can be provided as well as: the IDMP Pharmaceutical Product Identifiers (PhPID), Medicinal Product Identifier (MPID), Packaged Medicinal Product Identifier (PCID), when available, or equivalent coded concepts; the WHO ATC codes; or any other kind of code that that identifies, classifies or cluster the administered product."
* vaccineCode ^definition = "Vaccine that was administered or was to be administered. Several kinds of vaccine product coding could be provided.\r\n\r\nThe IPS assumes that either the type of the vaccine for particular disease or diseases (e.g. MMR vaccine) against which the patient has been immunized is provided; or the known absent / unknown.\r\n\r\n    Other coded information can be provided as well as:\r\n\r\n    1. The IDMP Pharmaceutical Product Identifier (PhPID), Level 1, [Substance(s)]. Example: Amoxicillin and Clavulanate Potassium; or any other equivalent coded concept.\r\n    2. The IDMP Pharmaceutical Product Identifier (PhPID), Level 2 [Substance(s) + Strength + reference strength]. Example: Amoxicillin 875 mg and Clavulanate Potassium 125 mg; or any other equivalent coded concept.\r\n    3. The IDMP Pharmaceutical Product Identifier (PhPID), Level 3 [Substance(s) + administrable dose form]. Example: Amoxicillin and Clavulanate Potassium, Oral Tablet; or any other equivalent coded concept.\r\n    4. The IDMP Pharmaceutical Product Identifier (PhPID), Level 4 [Substance(s) + strength + reference strength + administrable dose form]. Example: Amoxicillin 875 mg and clavulanate potassium 125 mg, oral tablet; or any other equivalent coded concept.\r\n    5. The IDMP Medicinal Product Identifier (MPID) or any equivalent Medicinal Product Identifier. IDMP MPID uniquely identifies a Medicinal Product, reflecting (but not replacing) any other authorization numbers allocated by a regulator. MPID implies one (set of) PhPID.     The MPID shall use a common segment pattern related to a Medicinal Product, which, when each segment is valued shall define a specific MPID concept.\r\n    6. The IDMP Packaged Medicinal Product Identifier (PCID) or any equivalent Packaged Medicinal Product Identifier.     Uniquely identifies a Medicinal Product based on its packaging. This implies one MPID can be associated with more than one PCID, if the same Medicinal Product has more than one type of package.\r\n    7. Any other kind of code that that identifies, classifies or clusters the administered product (e.g. the medicinal product or the product class).\r\n\r\n    The value sets used for the PhPID, MPID and PCID identifiers are provisional and include only few equivalent concepts used for exemplification purposes, they will be updated with real IDMP identifiers when they will become available."
* vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised."
* vaccineCode.coding 1.. MS
* vaccineCode.coding ^slicing.discriminator.type = #pattern
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.description = "Discriminated by bound value set"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    vaccineGPSCode 0..1 MS and
    atcClass 0..1 MS and
    absentOrUnknownImmunization 0..1 MS
* vaccineCode.coding[vaccineGPSCode] from VaccinesGpsUvIps (required)
* vaccineCode.coding[vaccineGPSCode] ^short = "Code for vaccine from the SNOMED CT GPS code set"
* vaccineCode.coding[vaccineGPSCode] ^definition = "Code for a vaccine that is selected from the SNOMED CT GPS code set."
* vaccineCode.coding[vaccineGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode.coding[vaccineGPSCode] ^binding.extension.valueString = "vaccineGPS"
* vaccineCode.coding[atcClass] from WhoAtcUvIps (required)
* vaccineCode.coding[atcClass] ^short = "WHO ATC classification"
* vaccineCode.coding[atcClass] ^definition = "WHO ATC classification"
* vaccineCode.coding[atcClass] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode.coding[atcClass] ^binding.extension.valueString = "WHO ATC"
* vaccineCode.coding[absentOrUnknownImmunization] from NoImmunizationInfoUvIps (required)
* vaccineCode.coding[absentOrUnknownImmunization] ^short = "Absent Unknown Immunization"
* vaccineCode.coding[absentOrUnknownImmunization] ^definition = "A reference to a code indicating that there there are no known immunizations or that this information is unknown."
* vaccineCode.coding[absentOrUnknownImmunization] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* vaccineCode.coding[absentOrUnknownImmunization] ^binding.extension.valueString = "Absent Unknown Immunization"
* patient only Reference(PatientUvIps)
* patient MS
* patient.reference 1.. MS
* occurrence[x] 1..1 MS
* occurrence[x].extension contains $data-absent-reason named data-absent-reason ..1 MS
* occurrence[x].extension[data-absent-reason] ^short = "occurrence[x] absence reason"
* occurrence[x].extension[data-absent-reason] ^definition = "Provides a reason why the occurrence is missing."
* site only CodeableConceptIPS
* site from TargetSiteCodeUvIps (preferred)
* route only CodeableConceptIPS
* route MS
* route from RouteOfAdminUvIps (preferred)
* route ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* route ^binding.extension.valueString = "ImmunizationRoute"
* performer MS
* performer.actor MS
* protocolApplied.targetDisease from TargetDiseasesUvIps (preferred)
* protocolApplied.targetDisease ^slicing.discriminator.type = #pattern
* protocolApplied.targetDisease ^slicing.discriminator.path = "$this"
* protocolApplied.targetDisease ^slicing.description = "Discriminated by bound value set"
* protocolApplied.targetDisease ^slicing.rules = #open
* protocolApplied.targetDisease contains targetDiseaseGPSCode 0..1 MS
* protocolApplied.targetDisease[targetDiseaseGPSCode] from TargetDiseasesGpsUvIps (required)
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^short = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^definition = "Code for a disease the vaccination is against from the SNOMED CT GPS code set."
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* protocolApplied.targetDisease[targetDiseaseGPSCode] ^binding.extension.valueString = "TargetDiseasesGpsUvIps"