Profile: PractitionerUvIps
Parent: Practitioner
Id: Practitioner-uv-ips
Title: "Practitioner - IPS"
Description: "This profile constrains the practitioner resource to represent a practitioner acting as observer for these imaging results."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* name 1.. MS
* name.family MS
* name.given MS
* telecom MS
* address MS