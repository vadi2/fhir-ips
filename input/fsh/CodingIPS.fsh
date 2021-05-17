Profile: CodingIPS
Parent: Coding
Id: Coding-uv-ips
Title: "Coding with translations"
Description: """This profile extends the capabilities of the coding data type to support multi-language designations (display).
It relies on the Translation extension."""
* ^version = "1.0.0"
* ^date = "2021-05-14T21:56:28-05:00"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* . MS
* system MS
* version MS
* code MS
* display MS
* display.extension MS
* display.extension ^slicing.discriminator.type = #value
* display.extension ^slicing.discriminator.path = "url"
* display.extension ^slicing.rules = #open
* display.extension contains Translation named translation 0..* MS
* display.extension[translation] ^short = "Language Translation (Localization)"