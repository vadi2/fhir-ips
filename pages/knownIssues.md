---
title: Known Issues and Future Development
layout: default
active: KnownIssues
---

<!-- {:.no_toc} -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

# Known Issues
1. Lack in representation of the summarization activities, including who did it, what was done (medication reconciliation, allergy reconciliation, medication allergy reconciliation, immunization/vaccination reconciliation, problem list/diagnosis reconciliation), what was the result, when and where was it done. This covers also the "Nature of the IPS" element included in EN 17269 and ISO/CD 27269.
1. Profile specificity to be improved. Not all the expected rules can be automatically validated, due to a lack of representation in the specified profiles.
1. More constrained vocabularies. The choices made in this version reflect the need of balancing the expectations of reducing optionality, to improve interoperability; and of avoiding over-constraints, to facilitate the local adoption. Moreover, it has been recognized the current lack, in some cases, of globally recognized and freely usable vocabularies (e.g. for the identification of medications); and the need, for specific concept domains, to extend the value sets based on the SNOMED Int. Global Patient Set. For these reasons only in few cases the binding is required; preferred or extensible bindings have been used instead.
1. MedicationStatement-uv-ips profile, the binding for element category reads erroneously "Medication Status Codes (preferred)", it should read "Medication statement categories" instead. This comes from a typo in the value set title in the current published FHIR R4 (see tracker #23979).

# Future Development
1. Investigate the relationships and the possible synergies with the International Patient Access Implementation Guide; exploring and better clarifying the role of the IPS document and of its reusable components (IPS profiles' library).
1. Specify how to send or get IPS documents or IPS resources by using FHIR APIs.
1. Explore the adoption of the Provenance resource with the IPS (bundle level, composition level or entry level) to document the IPS curation (see Known Issue #1 above) (see also the ["International Patient Summary: Use Cases"](https://confluence.hl7.org/pages/viewpage.action?pageId=48237134#InternationalPatientSummary:UseCases-Examples) confluence page)
