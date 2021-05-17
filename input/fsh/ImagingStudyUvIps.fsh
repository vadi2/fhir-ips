Profile: ImagingStudyUvIps
Parent: ImagingStudy
Id: ImagingStudy-uv-ips
Title: "Imaging Study (IPS)"
Description: """This profile represents the constraints applied to the ImagingStudy resource by the IPS project, which specifies the information on a DICOM imaging study this imaging result is part of.
"""
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* identifier MS
* identifier ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* identifier ^extension.valueString = "dicom="
* subject only Reference(PatientUvIps)
* subject MS
* subject ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* subject ^extension.valueString = "dicom=http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.2.2.html"
* subject.reference 1.. MS
* started MS
* started ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* started ^extension.valueString = "dicom=http://dicom.nema.org/medical/dicom/current/output/chtml/part03/sect_C.7.2.html#sect_C.7.2.1"
* procedureCode only CodeableConceptIPS
* procedureCode MS
* reasonCode only CodeableConceptIPS
* reasonCode MS
* series MS
* series.uid MS
* series.modality MS
* series.instance MS
* series.instance.uid MS
* series.instance.sopClass MS