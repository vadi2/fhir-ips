Profile: PatientUvIps
Parent: Patient
Id: Patient-uv-ips
Title: "Patient (IPS)"
Description: "This profile represents the constraints applied to the Patient resource by the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* identifier MS
* name 1..* MS
* name obeys ips-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text MS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.text ^min = 0
* name.family 0..1 MS
* name.given MS
* name.given ^min = 0
* telecom MS
* gender MS
* birthDate 1.. MS
* address MS
* address obeys pat-cnt-2or3-char
* contact MS
* contact ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* contact ^extension.valueString = "Contact"
* contact.relationship only CodeableConceptIPS
* contact.relationship MS
* contact.relationship from PersonalRelationshipUvIps (required)
* contact.relationship ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* contact.relationship ^binding.extension.valueString = "ContactRelationship"
* contact.name MS
* contact.telecom MS
* contact.address MS
* contact.organization MS
* communication MS
* communication.language MS
* communication.language from AllLanguages (required)
* generalPractitioner MS

Invariant: ips-pat-1
Description: "One or more of Patient.name.given or Patient.name.family or Patient.name.text SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"
XPath: "f:given or f:family or f:text"

Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"