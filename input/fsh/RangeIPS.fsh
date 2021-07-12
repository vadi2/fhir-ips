Profile: RangeIPS
Parent: Range
Id: Range-uv-ips
Title: "Range - IPS"
Description: "Range constrained to UCUM as the code system for units."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "Requires UCUM as the code system for units"
* . MS
* low only SimpleQuantityIPS
* low MS
* high only SimpleQuantityIPS
* high MS