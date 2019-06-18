*Preparation of the CONF files:*
 - 1a_extractConf.bat : generate the XML COnf files with the Conformance information
 - 1b_convertConffile.sh : generate the Txt files used as input by the following scripts
 
*Update the IG html pages*
-  2a_rebuild_site.sh : Remove the canonical URl from the type link
-  2b_add_conf.sh: add the cofnrmance rules to the html pages

*To Do*
- put the all the configuration variable [list of profiles (sections; dtablocks; datatype); paths;...] in an ini file to be used by all the scripts
- transform the ExtractConf.bat using a loop
- add the llink to the new format page 