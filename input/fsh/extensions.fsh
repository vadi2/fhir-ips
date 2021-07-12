Extension: AbatementDateTimeUvIps
Id: abatement-dateTime-uv-ips
Title: "Condition abatement date"
Description: "Extension defined by the IPS project to describe the abatement date for allergies"
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^context.type = #element
* ^context.expression = "AllergyIntolerance"
* . MS
* url MS
* valueDateTime only dateTime
* valueDateTime MS

/*
Extension: AbsentOrUnknownUvIps
Id: absent-or-unknown-uv-ips
Title: "Absent or Unknown Code - IPS"
Description: "Extension defined by the IPS project to describe absent or unknown content"
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^context.type = #element
* . MS
* url MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept MS
*/