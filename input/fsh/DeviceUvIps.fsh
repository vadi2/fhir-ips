Profile: DeviceUvIps
Parent: Device
Id: Device-uv-ips
Title: "Device - IPS"
Description: "This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "This profile constrains the representation of a medical device used by or impanted on the patient, in the context of the international patient summary as specified by the IPS project of HL7 International."
* . MS
* . ^comment = "This profile applies the rules defined by HL7 International for representing the UDI in the FHIR standard, by the document \"Medical Devices and Unique Device Identification (UDI) Pattern, Release 1\""
* type ..1 MS
* type only CodeableConceptIPS
* type from MedicalDevicesUvIps (preferred)
* type ^short = "Type of device.\r\nPreferably valued by using SNOMED CT.\r\nThe absence of information, or of devices relevant for purpose of this IPS, shall be explicitly stated by using the codes included in the absent-or-unknown-devices-uv-ips value set."
* type ^binding.description = "The type of device"
* type.coding MS
* type.coding ^slicing.discriminator.type = #pattern
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.description = "Discriminated by the bound value set"
* type.coding ^slicing.rules = #open
* type.coding contains absentOrUnknownDevice ..1 MS
* type.coding[absentOrUnknownDevice] from NoDevicesInfoUvIps (required)
* type.coding[absentOrUnknownDevice] ^definition = "Slice to be valued in case of no information or known absence of relevant devices for the purpose of this IPS"
* type.coding[absentOrUnknownDevice] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* type.coding[absentOrUnknownDevice] ^binding.extension.valueString = "absentOrUnknownDevice"
* type.coding[absentOrUnknownDevice] ^binding.description = "Absent problem or unknown device"
* patient 1.. MS
* patient only Reference(PatientUvIps)
* patient.reference 1.. MS