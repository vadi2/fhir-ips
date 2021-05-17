Profile: BundleUvIps
Parent: Bundle
Id: Bundle-uv-ips
Title: "Bundle (IPS)"
Description: "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in EN 17269 and ISO/DIS 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country."
* ^copyright = "HL7 International"
* . MS
* obeys bdl-ips-1
* . ^short = "International Patient Summary Bundle"
* . ^definition = "International Patient Summary Bundle. \r\nA container for a collection of resources in the patient summary document."
* identifier 1.. MS
* type = #document (exactly)
* timestamp 1.. MS
* link ..0
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary document bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain at a minimum the IPS Composition (the first entry) and at least one entry each for IPS Problems, Allergies and Medications."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 MS and
    problem 1.. MS and
    allergy 1.. MS and
    medication 1.. MS
* entry[composition].resource 1.. MS
* entry[composition].resource only CompositionUvIps
* entry[problem].resource 1.. MS
* entry[problem].resource only ConditionUvIps
* entry[allergy].resource 1.. MS
* entry[allergy].resource only AllergyIntoleranceUvIps
* entry[medication].resource 1.. MS
* entry[medication].resource only MedicationIPS

Invariant: bdl-ips-1
Description: "An IPS document must have no additional Composition (including Composition subclass) resources besides the first"
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"