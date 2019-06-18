@echo off

rem ===================
rem goto start
rem :start
rem ===================

set conf_dir=C:\msys64\home\Giorgio\_github\fhir-ips-lm\_other\conf
set sec_src_dir=C:\msys64\home\Giorgio\_github\fhir-ips-lm\logical_models\_ips_doc
set db_src_dir=C:\msys64\home\Giorgio\_github\fhir-ips-lm\logical_models\_data_block


REM ### SECTIONS BEGIN ####
echo IPS
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\IPS.structuredefinition.xml" /out "%conf_dir%\XML\IPS.conf.xml" %*

echo PatientAttributes 
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\PatientAttributes.structuredefinition.xml" /out "%conf_dir%\XML\PatientAttributes.conf.xml" %*

echo AddressBook 
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\AddressBook.structuredefinition.xml" /out "%conf_dir%\XML\AddressBook.conf.xml" %*

echo AllergyIntoleranceSection 
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\AllergyIntoleranceSection.structuredefinition.xml" /out "%conf_dir%\XML\AllergyIntoleranceSection.conf.xml" %*

echo MedicationSummarySection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\MedicationSummarySection.structuredefinition.xml" /out "%conf_dir%\XML\MedicationSummarySection.conf.xml" %*

echo ProblemsSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\ProblemsSection.structuredefinition.xml" /out "%conf_dir%\XML\ProblemsSection.conf.xml" %*

echo ImmunizationsSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\ImmunizationsSection.structuredefinition.xml" /out "%conf_dir%\XML\ImmunizationsSection.conf.xml" %*

echo ProceduresSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\ProceduresSection.structuredefinition.xml" /out "%conf_dir%\XML\ProceduresSection.conf.xml" %*

echo MedicalDevicesSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\MedicalDevicesSection.structuredefinition.xml" /out "%conf_dir%\XML\MedicalDevicesSection.conf.xml" %*

echo ResultsSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\ResultsSection.structuredefinition.xml" /out "%conf_dir%\XML\ResultsSection.conf.xml" %*
 
echo VitalSignsSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\VitalSignsSection.structuredefinition.xml" /out "%conf_dir%\XML\VitalSignsSection.conf.xml" %*

echo SocialHistorySection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\SocialHistorySection.structuredefinition.xml" /out "%conf_dir%\XML\SocialHistorySection.conf.xml" %*
 
echo AdvanceDirectivesSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\AdvanceDirectivesSection.structuredefinition.xml" /out "%conf_dir%\XML\AdvanceDirectivesSection.conf.xml" %*
 
echo PlanOfCareSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\PlanOfCareSection.structuredefinition.xml" /out "%conf_dir%\XML\PlanOfCareSection.conf.xml" %*
 
echo PregnancyHistorySection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\PregnancyHistorySection.structuredefinition.xml" /out "%conf_dir%\XML\PregnancyHistorySection.conf.xml" %*
 
echo  HxPastProblemsSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\HxPastProblemsSection.structuredefinition.xml" /out "%conf_dir%\XML\HxPastProblemsSection.conf.xml" %*
 
echo CrossBorderAttributes
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\CrossBorderAttributes.structuredefinition.xml" /out "%conf_dir%\XML\CrossBorderAttributes.conf.xml" %*
 
echo Provenance
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\Provenance.structuredefinition.xml" /out "%conf_dir%\XML\Provenance.conf.xml" %*
  
echo FunctionalStatusSection
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%sec_src_dir%\FunctionalStatusSection.structuredefinition.xml" /out "%conf_dir%\XML\FunctionalStatusSection.conf.xml" %*

 
REM SECTIONS END ####

echo AdvanceDirective
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "C:\msys64\home\Giorgio\_github\fhir-ips-lm\logical_models\_data_block\AdvanceDirective.structuredefinition.xml" /out "%conf_dir%\XML\AdvanceDirective.conf.xml" %*

echo AllergyIntolerance
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\AllergyIntolerance.structuredefinition.xml" /out "%conf_dir%\XML\AllergyIntolerance.conf.xml" %*

echo Device
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Device.structuredefinition.xml" /out "%conf_dir%\XML\Device.conf.xml" %*

echo Disability
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Disability.structuredefinition.xml" /out "%conf_dir%\XML\Disability.conf.xml" %*

echo FunctionalAssessment
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\FunctionalAssessment.structuredefinition.xml" /out "%conf_dir%\XML\FunctionalAssessment.conf.xml" %*

echo Immunization
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Immunization.structuredefinition.xml" /out "%conf_dir%\XML\Immunization.conf.xml" %*

echo LifestyleFactor
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\LifestyleFactor.structuredefinition.xml" /out "%conf_dir%\XML\LifestyleFactor.conf.xml" %*

echo Medication
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Medication.structuredefinition.xml" /out "%conf_dir%\XML\Medication.conf.xml" %*

echo MedicationStatement
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\MedicationStatement.structuredefinition.xml" /out "%conf_dir%\XML\MedicationStatement.conf.xml" %*

echo PastProblem
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\PastProblem.structuredefinition.xml" /out "%conf_dir%\XML\PastProblem.conf.xml" %*

echo Plan
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Plan.structuredefinition.xml" /out "%conf_dir%\XML\Plan.conf.xml" %*

echo PregnancyStatus
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\PregnancyStatus.structuredefinition.xml" /out "%conf_dir%\XML\PregnancyStatus.conf.xml" %*

echo Problem
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Problem.structuredefinition.xml" /out "%conf_dir%\XML\Problem.conf.xml" %*

echo Procedure
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Procedure.structuredefinition.xml" /out "%conf_dir%\XML\Procedure.conf.xml" %*

echo Result
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\Result.structuredefinition.xml" /out "%conf_dir%\XML\Result.conf.xml" %*

echo VitalSign
"C:\Program Files (x86)\Altova\AltovaXML2013\AltovaXML" /xslt2 "MappingMapToconf_sample.xslt" /in "%db_src_dir%\VitalSign.structuredefinition.xml" /out "%conf_dir%\XML\VitalSign.conf.xml" %*



copy %conf_dir%\XML\*.xml %conf_dir%\TXT\*.txt 




IF ERRORLEVEL 1 EXIT/B %ERRORLEVEL%