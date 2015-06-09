---
layout: page
title: The MathML Manifesto
---

## Warning: this is a draft.

#### 1) Mathematical Language

*Mathematical language* is fundamental for scientific, technical, and educational
communication.  *It must be supported by internet tools with the same consideration as any
other human language*.

#### 2) Open Standards

In order to guarantee compatibility for data exchange, mathematical rendering and
authoring tools must rely on *open formats and standards*. When extension or improvements
are necessary, they must be conducted in a *public standardization process*.

#### 3) Mathematical Formulae

Modern mathematical language relies on *mathematical formulae*, highly structured
expressions composed of previously introduced identifiers that are presented in a
conventionalized sesquidimensional notation.

#### 4) MathML: Mathematical Markup Language 

The pertinent open standard for representing the meaning and layout of mathematical
formulae is the [Mathematical Markup Language (MathML)](http://www.w3.org/TR/MathML/)
maintained by the [World Wide Web Consortium (W3C)](http://www.w3.org). MathML3 supports
provides

* a set of layout primitives (*presentation MathML*) for the encoding of the
  presentational aspect mathematical formulae as a layout tree, and 
* a set of meaning composition primitives and operators (*content MathML*) for the
  encoding the meaning of formulae - the operator tree.

These two sublanguages are well-integrated: presentation and meaning can be combined in
one mixed expression (*parallel MathML markup*) for cross-fertilization and interactive
presentation.

#### 5) MathML Tool Support 

*MathML must be used to encode mathematical formulas on the internet*.

Software applications must use content MathML to *communicate partial results among each
other without loss of meaning* and generate parallel MathML markup for the *communication
with humans*. For mathematical web documents (e.g. web pages, electronic mails or
whitepapers) suitable MathML encodings must be provided in the source code to make it
*usable by the largest number of tools*.

These tools are not limited to the dominant web browsers alone, they include web crawlers,
screen readers, content aggregators, and browsers without support for script languages
such as JavaScript. All tools need to be able to process the respective aspects of MathML,
in particular:

##### 5.1) Layout Engines

Web engines providing visual rendering of documents with complex layout must also support
native and fast display of MathML formulas, in a way *compatible with the layout, styling
or dynamic update* that are available for other web content.

##### 5.2) Mathematical Fonts

Fonts for displaying mathematical formulae must contain appropriate data to make possible
for layout engines to use them for a good mathematical rendering.

##### 5.3) Accessibility

Assistive technologies used to read or edit documents must be able to handle MathML in
order to make *mathematical formulas accessible to disabled persons* based on the the
layout/content structure of MathML-encoded formulae.

##### 5.4) Internationalization

Mathematical tools must support the miscellaneous scripts and notations permitted by
MathML and Unicode in order to take into account the *cultural differences of mathematical
writing*. This includes supporting non-latin alphabets and bidirectional writing.

##### 5.5) Security and Privacy

Security and Privacy are important features for internet users. MathML must be implemented
in web engines and assistive technologies without losing these features. Web services for
mathematical content should also guarantee these features to their users.

##### 5.6) Authoring

Authoring tools must give individuals the opportunity to write and edit the *content/layout
structure of MathML formulas* or to convert them from other mathematical representations.
