Profile: RatioIPS
Parent: Ratio
Id: Ratio-uv-ips
Title: "Ratio (IPS)"
Description: "Ratio data type, constrained to use UCUM as the code system for units."
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* ^purpose = "Allow only UCUM as the code system for units."
* . MS
* numerator only QuantityIPS
* numerator MS
* denominator only QuantityIPS
* denominator MS