---
title: EN 17269 IPS Logical Models
layout: default
active: home
---
<!-- 
### Jekyll Site Variables

These are the site variables defined [here](http://wiki.hl7.org/index.php?title=IG_Publisher_Documentation#Jekyll):

- IG Business version specification (defined in ig.json)- {% raw %}{{site.data.fhir.ig.version}} {% endraw %} = {{site.data.fhir.ig.version}}

- IG status (defined in ig.xml)- {% raw %}{{site.data.fhir.ig.status}} {% endraw %} = {{site.data.fhir.ig.status}}

- Whether is experimental IG (defined in ig.xml) - {% raw %}{{site.data.fhir.ig.experimental}} {% endraw %} = {{site.data.fhir.ig.experimental}}

- IG Publisher name (defined in ig.xml) - {% raw %}{{site.data.fhir.ig.publisher}} {% endraw %} = {{site.data.fhir.ig.publisher}}

- dependency url - e.g. "uscore" : Base url of a dependency implementation Guide (defined in ig.json) -  {% raw %} {{site.data.fhir.uscore}} {% endraw %}= {{site.data.fhir.uscore}}

- igName : Title of the implementation Guide (defined in ig.xml) -  {% raw %} {{site.data.fhir.igName}} {% endraw %}= {{site.data.fhir.igName}}

- path : path to the main FHIR specification (defined in ig.json)-  {% raw %} {{site.data.fhir.path}} {% endraw %}= {{site.data.fhir.path}}

- canonical : canonical path to this specification (defined in ig.json)-  {% raw %} {{site.data.fhir.canonical}} {% endraw %} = {{site.data.fhir.canonical}}

- errorCount : number of errors in the build file (not including HTML validation errors) -  {% raw %} {{site.data.fhir.errorCount}} {% endraw %} = {{site.data.fhir.errorCount}}

- version : version of FHIR -  {% raw %} {{site.data.fhir.version}} {% endraw %} = {{site.data.fhir.version}}

- revision : revision of FHIR -  {% raw %} {{site.data.fhir.revision}} {% endraw %} = {{site.data.fhir.revision}}

- versionFull : version-revision -  {% raw %} {{site.data.fhir.versionFull}} {% endraw %} = {{site.data.fhir.versionFull}}

- totalFiles : total number of files found by the build -  {% raw %} {{site.data.fhir.totalFiles}} {% endraw %} = {{site.data.fhir.totalFiles}}

- processedFiles : number of files genrated by the build -  {% raw %} {{site.data.fhir.processedFiles}} {% endraw %} = {{site.data.fhir.processedFiles}}

- genDate : date of generation (so date stamps in the pages can match those in the conformance resources) -  {% raw %} {{site.data.fhir.genDate}} {% endraw %} = {{site.data.fhir.genDate}}
-->

<blockquote class="stu-note">
<p><b>WARNING</b></p>
<p>This is just a proof of concept ! </p>
</blockquote>

<blockquote class="stu-note">
<p>This is a work in progress version <!-- Current officially released version --> of the {{site.data.fhir.igName}}, based on <a href="{{ site.data.fhir.path }}">FHIR Version {{ site.data.fhir.version }}</a>. See the <a href="history.html">Directory of published versions<img src="external.png"/></a>. It is subject to change, which may be significant, as part of that process.
</p>
<p>
Feedback is welcome but for the time being do not submit them through the <a href="http://gforge.hl7.org/gf/project/fhir/tracker/?action=TrackerItemAdd&amp;tracker_id=677">FHIR gForge tracker</a> indicating "International Patient Summary" as the specification.
</p>
</blockquote>




## Purpose of this guide

The purpose of this Guide is to formalize, by using FHIR Logical Models, the International Patient Summary data set as specified by the EN 17269.


## The EN 17269 :The Patient Summary for Unscheduled Cross-border Care

### Goal and scope

<div>
<p>
The goal of the EN 17269 standard is to deliver a single, common International Patient Summary (IPS), comprising core content.
Its scope is to achieve that goal by defining a minimal yet non-exhaustive data set and its associated business rules. This document is intended to be implementation independent yet still supportive of any implementation by providing formal definition and clear description of a small data set. The primary input to the data set is the second revision of the European eHealth Network’s data set, which, in turn, builds upon significant clinical input from the European Patients-Smart Open Services pilot project.
This document defines the International Patient Summary (IPS), with the initial focus upon unplanned care across national borders.  Starting from this focus, the specification is intended to be used and be useful in local applications and also to be supportive of planned care.  It emphasizes the data required and the associated business rules to support use and the necessary conformance of the use case for an international patient summary.
The data set described is intended for global use beginning with a shared vision  from a collaboration between CEN /TC 251 and HL7. CEN has produced a separate Technical Specification (DTS 17288) that provides a European-specific guideline for IPS implementation. HL7 have produced CDA and HL7 FHIR  templates for realizing implementations of the IPS.</p><p>
The ‘International’ element of the IPS emphasizes the need to provide generic solutions for global application moving beyond a particular region or country; consequently, wherever possible, reference is made to international standards, rather than local ones.  However, different international contexts will offer a variety of requirements that need to be considered to ensure that patient safety is not compromised.  The IPS is underpinned by the ISO standard “System of concepts to support continuity of care” [3] and uses those concepts in the initial IPS scenario, which is fully described in Annex A.</p><p>
This standard focuses upon the overall structure of the patient summary as well as the individual data elements that comprise it.  The layout of this document uses a hierarchy of levels (H0 to H7) to facilitate more detailed description with the purpose of supporting consistent implementation of the data set.  The level ‘H0’ describes the IPS Document as a whole, whilst levels H1-H7 describe the IPS Data Blocks with attributes.  Descriptors are added to each data element to better define the characteristics. The ‘H0’ level document structure and constraints will be described first, the components start with H1 (e.g. IPS Sections, IPS Attribute Collections).</p>
</div>


<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

<!--
* Do not remove this line (it will not be displayed)
 {:toc} -->


<!-- end TOC -->

### Scope

<div>
<p>
This document defines the core data set for a patient summary (as a document and as a set of data blocks) that supports continuity of care for a person and coordination of healthcare. It is specifically aimed at supporting the use case scenario for ‘unplanned, cross border care’ and is intended to be an international patient summary (IPS).  The data set is minimal and non-exhaustive, providing a robust, well-defined core set of data items. This tight focus on the use case enables the IPS to also be used in planned care, and for both unplanned and planned care to be supported by this data set within local and national contexts, thereby increasing its utility and value.
</p>
<p>
It uses the European Guideline from the eHN as the initial source for the patient summary requirements but takes into consideration other international efforts so as to provide an interoperable data set specification for global application.
</p>
<p>
This IPS standard provides an abstract definition of a Patient Summary from which derived models are implementable.  Due to its nature therefore, readers should be aware that the compliance with this standard doesn’t imply automatic technical interoperability; this result, enabled by this standard, can be reached with the conformity to standards indicated in the associated technical specification and implementation guides.
</p>
<p>
This international standard does not cover workflow processes of data entry, data collection, the summarization act itself nor subsequent data presentation, nor assimilation, nor aggregation.
It is not an implementation guide that is concerned with the various technical layers beneath the application layer.  Implementation guidance for specifically jurisdictional concerns, e.g. Directives, terminologies, formats etc., is specified in the associated Technical Specification (DTS 17288).
</p>
<p>
In particular, representation by various coding schemes, additional structures and terminologies are not part of this standard.  Terminology and its binding are addressed in the associated Technical Specification (DTS 17288). The Identification of Medicinal Products standards (abbreviated to IDMP) are the recommended target for the Medication Summary related to this standard but, prior to IDMP’s full implementation in practice, this IPS standard cannot insist in its use at this point in time and recognizes that interim schemes may be necessary until IDMP becomes a norm.
</p>
     </div>
     
     

### Primary Editor and Contributors

| Role  | Name | Organization | contact |
| --- | --- | --- | --- |
| **Primary Editor** | Steve Kay | xxx | xxx |
| **Contributor** | Giorgio Cangioli, PhD | Consultant, HL7 Italy | giorgio.cangioli@gmail.com |
| **Contributor** | Karima Bouquard | IHE Europe |  |
| **Contributor** | Vincent van Pelt  | xxx | xxx |


## This Guide Authors and Contributors

| Role  | Name | Organization | contact |
| --- | --- | --- | --- |
| **Primary Editor** | Giorgio Cangioli, PhD | Consultant, HL7 Italy | giorgio.cangioli@gmail.com |
| **Contributor** | Michael van der Zel  | xxx | xxx |
| **Contributor** | Steve Kay | xxx | xxx |