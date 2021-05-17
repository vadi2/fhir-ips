Profile: PractitionerRoleUvIps
Parent: PractitionerRole
Id: PractitionerRole-uv-ips
Title: "PractitionerRole (IPS)"
Description: "This profile constrains the PractitionerRole resource to represent a practitioner acting as observer for observattion results for a specified organization."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* practitioner only Reference(PractitionerUvIps)
* practitioner MS
* organization only Reference(OrganizationUvIps)
* organization MS
* code only CodeableConceptIPS
* code ^slicing.discriminator.type = #pattern
* code ^slicing.discriminator.path = "$this"
* code ^slicing.description = "Discriminated by the bound value set"
* code ^slicing.rules = #open
* code ^definition = "Roles which this practitioner is authorized to perform for the organization."
* code contains healthcareProfessionalRoles 0..*
* code[healthcareProfessionalRoles] from HealthcareProfessionalRolesUvIps (required)
* code[healthcareProfessionalRoles] ^short = "Healthcare professional role codes from International Standard Classification of Occupations (ISCO)"
* code[healthcareProfessionalRoles] ^definition = "Healthcare professional role codes from International Standard Classification of Occupations (ISCO)."
* code[healthcareProfessionalRoles] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code[healthcareProfessionalRoles] ^binding.extension.valueString = "healthcareProfessionalRoles"
* code[healthcareProfessionalRoles] ^binding.description = "healthcare professional roles"