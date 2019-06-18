---
title: Formats for this Guide
layout: default
active: formats
---

<h3 class="self-link-parent">Logical table <a href="http://hl7.org/fhir/formats.html#table" title="link to here" class="self-link"><svg viewBox="0 0 1792 1792" width="20" class="self-link" height="20"><path d="M1520 1216q0-40-28-68l-208-208q-28-28-68-28-42 0-72 32 3 3 19 18.5t21.5 21.5 15 19 13 25.5 3.5 27.5q0 40-28 68t-68 28q-15 0-27.5-3.5t-25.5-13-19-15-21.5-21.5-18.5-19q-33 31-33 73 0 40 28 68l206 207q27 27 68 27 40 0 68-26l147-146q28-28 28-67zm-703-705q0-40-28-68l-206-207q-28-28-68-28-39 0-68 27l-147 146q-28 28-28 67 0 40 28 68l208 208q27 27 68 27 42 0 72-31-3-3-19-18.5t-21.5-21.5-15-19-13-25.5-3.5-27.5q0-40 28-68t68-28q15 0 27.5 3.5t25.5 13 19 15 21.5 21.5 18.5 19q33-31 33-73zm895 705q0 120-85 203l-147 146q-83 83-203 83-121 0-204-85l-206-207q-83-83-83-203 0-123 88-209l-88-88q-86 88-208 88-120 0-204-84l-208-208q-84-84-84-204t85-203l147-146q83-83 203-83 121 0 204 85l206 207q83 83 83 203 0 123-88 209l88 88q86-88 208-88 120 0 204 84l208 208q84 84 84 204z" fill="navy"></path></svg></a></h3>
<p>
The Logical View shows the resources as a tree structure with the following columns:
</p>
<table class="grid">
 <tbody><tr> <td><b>Column</b></td> <td><b>Content</b></td> </tr>
 <tr> <td>Name</td> <td>The name of the element in the resource (manifests as XML element name or JSON or RDF property name). Some names finish with <code>[x]</code> - the meaning of this is discussed below. In addition, this column contains an icon that denotes the underlying type of the content. The icons are described below</td> </tr>
 <tr> <td>Conf.</td> <td>A set of conformance rules for derived models. The Conf. are described <a href="ValueSet-conformance-cen-ips.html">here</a></td> </tr>
 <tr> <td>Card.</td> <td>Cardinality: the lower and upper bounds on how many times this element is allowed to appear in the resource</td> </tr>
 <tr> <td>Type</td> <td>The type of the element (hyperlinked to the definition of the type). Note that the type of the element has one of two meanings,
   depending on whether the element has defined children. If the element has children, then the element has an anonymous type that specializes the given type. If the element has no children, then
   the element has properties and children as specified by the nominated type</td> </tr>
 <tr> <td>Description &amp; Constraints</td> <td>A description of the element, and details about constraints that are applied to it. Particularly, for coded elements, information about which codes can be used. 
   The description comes from <a href="http://hl7.org/fhir/elementdefinition-definitions.html#ElementDefinition.short">ElementDefinition.short</a></td> </tr>
</tbody></table>
<p>
Here's an example:
</p>
<table border="0" cellpadding="0" cellspacing="0" style="border: 0px; font-size: 11px; font-family: verdana; vertical-align: top;"><tbody>
<tr style="border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;">
  <th style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Name</th>
  <th style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Conf.</th>
  <th style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Card.</th>
  <th style="width: 100px" class="hierarchy">Type</th>
  <th style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Description &amp; Constraints</th>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
  <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="icon_resource.png" alt="." style="background-color: white;" title="Resource" class="hierarchy"> <a href="http://hl7.org/fhir/formats.html#" title="Definition">Resource Name</a></td>
  <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"></td>
  <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"></td>
  <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><a href="http://hl7.org/fhir/resource.html">Base Type</a></td>
  <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Definition</td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_vjoin.png" alt="." class="hierarchy"><img src="icon_datatype.gif" alt="." style="background-color: white;" title="Data Type" class="hierarchy"> <a href="http://hl7.org/fhir/formats.html#" title="Definition">nameA</a></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Required">R</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">1..1</td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><a href="http://hl7.org/fhir/formats.html#">TypeA</a></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">description of content</td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_vjoin.png" alt="." class="hierarchy"><img src="icon_choice.gif" alt="." style="background-color: white;" title="Choice of Types" class="hierarchy"> <a href="http://hl7.org/fhir/formats.html#" title="Description">nameB[x]</a></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Required if Known">RK</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">0..1</td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">description<br><span title="1">SHALL at least have a value</span></td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_vline.png" alt="." class="hierarchy"><img src="tbl_vjoin.png" alt="." class="hierarchy"><img src="icon_primitive.png" alt="." style="background-color: white;" title="Primitive Data Type" class="hierarchy"> <span title="Value of &quot;true&quot; or &quot;false&quot;">nameBType1</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Conditional">C</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">0..1</td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><a href="http://hl7.org/fhir/formats.html#">TypeB</a></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"></td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_vline.png" alt="." class="hierarchy"><img src="tbl_vjoin_end.png" alt="." class="hierarchy"><img src="icon_primitive.png" alt="." style="background-color: white;" title="Primitive Data Type" class="hierarchy"> <span title="Value of &quot;true&quot; or &quot;false&quot;">nameBType2</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Conditional">C</span></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">0..1</td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><a href="http://hl7.org/fhir/formats.html#">typeC</a></td>
 <td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"></td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_vjoin_end.png" alt="." class="hierarchy"><img src="icon_element.gif" alt="." style="background-color: white;" title="Element" class="hierarchy"> <a href="http://hl7.org/fhir/formats.html#" title="Definition">nameC</a></td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Required">R</span></td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">1..*</td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">BackboneElement</td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Definition</td>
</tr>
<tr style="border: 0px; padding:0px; vertical-align: top; background-color: white;">
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)" class="hierarchy"><img src="tbl_spacer.png" alt="." class="hierarchy"><img src="tbl_blank.png" alt="." class="hierarchy"><img src="tbl_vjoin_end.png" alt="." class="hierarchy"><img src="icon_datatype.gif" alt="." style="background-color: white;" title="Data Type" class="hierarchy"> <a href="http://hl7.org/fhir/formats.html#" title="Definition">nameD</a></td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><span title="This element is Required">R</span></td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">1..1</td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy"><a href="http://hl7.org/fhir/formats.html#">TypeD</a></td>
<td style="vertical-align: top; text-align : left; padding:0px 4px 0px 4px" class="hierarchy">Relevant Records</td>
</tr>
</tbody>
</table>

<a name="legend"></a>
<p>Key to Type Icons</p>
<ul>
 <li><img src="icon_resource.png" alt="." style="background-color: white;" title="Resource" class="hierarchy">: The base element for a resource (see <a href="http://hl7.org/fhir/resource.html">Resources</a>)</li>
 <li><img src="icon_element.gif" alt="." style="background-color: white;" title="Element" class="hierarchy">: An element that is part of the resource and has elements within it defined in the same resource or profile</li>
 <li><img src="icon_choice.gif" alt="." style="background-color: white;" title="Choice of Types" class="hierarchy">: An element which can have one of several different types (see below)</li>
 <li><img src="icon_primitive.png" alt="." style="background-color: white;" title="Primitive Data Type" class="hierarchy">: An element of a data type which describes an element that has a <code>value</code> attribute/property. These are also known as primitive types. All primitive type names start with a lower case letter</li>
 <li><img src="icon_datatype.gif" alt="." style="background-color: white;" title="Data Type" class="hierarchy">: An element of a data type which describes an element that has other elements. These are known as complex types. All complex type names defined in this specification start with an uppwer case letter </li>
 <li><img src="icon_reference.png" alt="." style="background-color: white;" title="Reference to another Resource" class="hierarchy">: An element that contains a reference to another resource (see <a href="http://hl7.org/fhir/references.html">references</a>)</li>
 <li><img src="icon_reuse.png" alt="." style="background-color: white;" title="Reference to another Element" class="hierarchy">: This element has the same content as another element defined within this resource or profile</li>
 <li><img src="icon_slice.png" alt="." style="background-color: white;" title="Slice Definition" class="hierarchy">: Introduction of a set of slices (see <a href="http://hl7.org/fhir/profiling.html#slicing">Slicing</a>)</li>
 <li><img src="icon_extension_complex.png" alt="." style="background-color: white;" title="Complex Extension" class="hierarchy">: A complex extension - one with nested extensions (see <a href="http://hl7.org/fhir/extensibility.html#complex">Extensibility</a>)</li>
 <li><img src="icon_extension_simple.png" alt="." style="background-color: white;" title="Simple Extension" class="hierarchy">: An extension that has a value and no nested extensions (see <a href="http://hl7.org/fhir/extensibility.html">Extensibility</a>)</li>
 <li><img src="icon_modifier_extension_complex.png" alt="." style="background-color: white;" title="Complex Modifier Extension" class="hierarchy">: A complex modifier extension - one with nested extensions (see <a href="http://hl7.org/fhir/extensibility.html#complex">Extensibility</a>)</li>
 <li><img src="icon_modifier_extension_simple.png" alt="." style="background-color: white;" title="Simple Modifier Extension" class="hierarchy">: A modifier extension that has a value and no nested extensions (see <a href="http://hl7.org/fhir/extensibility.html">Extensibility</a>)</li>
 <li><img src="icon_profile.png" alt="." style="background-color: white;" title="Profile" class="hierarchy">: The root of a logical profile</li>
  <!-- dont think this is used <li><img title="Text" style="background-color: white;" alt="." class="hierarchy" src="icon_text.png"/>: Plain text content</li> -->
</ul>
<p>Notes:</p>
<ul>
 <li>Resource and Element names are case-sensitive (though duplicates that differ only in case are never defined)</li>
 <li>Any elements that have a <a href="http://hl7.org/fhir/datatypes.html#primitive">primitive type</a> will have a <code>value</code> attribute/property to contain the actual value of the element</li>
 <li>This <code>value</code> attribute/property can never be empty. Either it is absent, or it is present with at least one character of non-whitespace content</li>
 <li>Elements are assigned a cardinality that specifies how many times the element may or must appear. </li>
 <li>Unless elements have children defined directly (as nameC does above) they are assigned one or more types (see <a href="http://hl7.org/fhir/datatypes.html">the data types</a>). All the type names are hyperlinked to the source definition</li>
 <li>Element reuse: Some data types that have children have the same set of children as some other element defined in the resource. In that case, the type of that element has a "see [name]" where [name] is the name of the element that has the defined children</li>
 <li>Each element name is also a hyperlink to the formal definition of the element in the data dictionary that underlies the exchange formats. </li>
 <li>Any of the elements may have an <code>id</code> attribute to serve as <a href="http://hl7.org/fhir/references.html#id">the target of an internal reference</a>. The <code>id</code> attribute is not shown in this format. Extensions are not always shown, but may appear except where the flag <code>NE</code> appears</li>
 <a name="element-rules"></a>
 <li>FHIR elements can never be empty. If an element is present in the resource, it SHALL have either a value, child elements as defined for its type, or 1 or more <a href="http://hl7.org/fhir/extensibility.html">extensions</a></li>
 <li>Infrastructural elements that are common to all resources are not shown in the logical representation. These are described in the common base classes <a href="http://hl7.org/fhir/resource.html">Resource</a>, and <a href="http://hl7.org/fhir/domainresource.html">DomainResource</a></li>
</ul>

<p>
The data type for a particular element is typically expressed as the name of the specified type with a hyperlink to its definition.  However, there are two exceptions:
</p>
<ul>
<li>If the element supports multiple types (name ends with [x]), then the type will be a list of data type options, each separated by "|"</li>
<li>If one of the types is <a href="http://hl7.org/fhir/references.html">Reference</a> or <a href="http://hl7.org/fhir/datatypes.html#canonical">canonical</a>, the data type might be followed by a list of allowed targets the reference is allowed to be.  These might be resource names, data type names, or profile URLs, depending on the context.  As well, the following symbols may appear that represent expectations of where the referenced resource is located: 
  <ul>
    <li><code>b</code>: Resource must appear within the same <a href="http://hl7.org/fhir/bundle.html">Bundle</a>;</li>
    <li><code>c</code>: Resource must be sent as a <a href="http://hl7.org/fhir/references.html">contained</a> resource;</li>
    <li><code>r</code>: Resource is a non-contained reference - i.e. to a resource within the same Bundle or to an external resource</li>
  </ul>
</li>
</ul>
<p>
In profiles, references to types may be profiled - i.e. Instances of the element must comply with a specified profile or one of a list of profiles.  The canonical URLs of any applicable profiles are listed inside {}.
</p>

<p>
Where an element can have a choice of data types, or is a <a href="http://hl7.org/fhir/references.html">Reference</a> these are
represented by showing the common type (<code>Reference</code> or <code>Type</code>), and then showing the applicable data type names or
resource types in a stereotype, separated by the <code>|</code> character. <code>Type</code> is not formally otherwise defined by
this specification, but is a super type of all the data types.
</p>

<a name="choice"></a>
<h3 class="self-link-parent"><span class="sectioncount">2.6.0.1.2</span> Choice of Data Types <a href="http://hl7.org/fhir/formats.html#choice" title="link to here" class="self-link"><svg viewBox="0 0 1792 1792" width="20" class="self-link" height="20"><path d="M1520 1216q0-40-28-68l-208-208q-28-28-68-28-42 0-72 32 3 3 19 18.5t21.5 21.5 15 19 13 25.5 3.5 27.5q0 40-28 68t-68 28q-15 0-27.5-3.5t-25.5-13-19-15-21.5-21.5-18.5-19q-33 31-33 73 0 40 28 68l206 207q27 27 68 27 40 0 68-26l147-146q28-28 28-67zm-703-705q0-40-28-68l-206-207q-28-28-68-28-39 0-68 27l-147 146q-28 28-28 67 0 40 28 68l208 208q27 27 68 27 42 0 72-31-3-3-19-18.5t-21.5-21.5-15-19-13-25.5-3.5-27.5q0-40 28-68t68-28q15 0 27.5 3.5t25.5 13 19 15 21.5 21.5 18.5 19q33-31 33-73zm895 705q0 120-85 203l-147 146q-83 83-203 83-121 0-204-85l-206-207q-83-83-83-203 0-123 88-209l-88-88q-86 88-208 88-120 0-204-84l-208-208q-84-84-84-204t85-203l147-146q83-83 203-83 121 0 204 85l206 207q83 83 83 203 0 123-88 209l88 88q86-88 208-88 120 0 204 84l208 208q84 84 84 204z" fill="navy"></path></svg></a></h3>
<p>
A few elements have a choice of more than one data type for their content. All such elements have a name that
takes the form <code>nnn[x]</code>. The "nnn" part of the name is constant, and the "[x]" is replaced with the title-cased
name of the type that is actually used. The table view shows each of these names explicitly.
</p>
<p>
Elements that have a choice of data type cannot repeat - they must have a maximum cardinality of 1.
When constructing an instance of an element with a choice of types, the authoring system must create a single
element with a data type chosen from among the list of permitted data types.
</p>
<p>
Note: In object-orientated implementations, this is naturally represented as a polymorphic property.
However this is not necessary and the correct implementation varies according to the particular features
of the language. In XML schema, these become an xs:choice of element. To help with code generation, <a href="http://hl7.org/fhir/choice-elements.json">a list
of choice elements</a> is published.
</p>