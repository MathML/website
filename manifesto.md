---
layout: page
title: MathML Manifesto
---

Warning: this is a draft.

#### 1) Mathematical Language

Mathematical language is fundamental for scientific, technical, and educational
communication.  It must be supported by internet tools with the same consideration as any
other human language.

#### 2) Open Standards

In order to guarantee compatibility for data exchange, mathematical rendering and
authoring tools must rely on open formats and standards. When extension or improvements
are necessary, they must be conducted in a public standardization process.

#### 3) Mathematical Formulae

Modern mathematical language relies on mathematical formulae, highly structured
expressions composed of previously introduced identifiers that are presented in a
conventionalized sesquidimensional notation.

#### 4) MathML: Mathematical Markup Language 

The pertinent open standard for representing the meaning and layout of mathematical
formulae is the Mathematical Markup Language (MathML) maintained by the World Wide Web
Consortium (W3C). MathML3 supports provides

* a set of layout primitives (*presentation MathML*) for the encoding of the
  presentational aspect mathematical formulae as a layout tree, and 
* a set of meaning composition primitives and operators (*content MathML*) for the
  encoding the meaning of formulae - the operator tree.

These two sublanguages are well-integrated: presentation and meaning can be combined in
one mixed expression for cross-fertilization and interactive presentation. 

#### 5) MathML Tool Support 

MathML must be used on the internet to encode mathematical formulas. For
static formulas, it must be provided in the source code of web pages or
electronic mails in order to make it usable by the largest number of tools,
including web crawlers and browsers without support for script language such
as Javascript.

#### 6) Web Engines

Web engines providing visual rendering of documents with complex layout
must also support native and fast display of MathML formulas, in a way
compatible with the layout, styling or dynamic update that are available for
other web content. Mathematical fonts must contain appropriate data to make
possible for web engines to use them for a good mathematical rendering.

#### 7) Accessibility

Assistive technologies used to read or edit documents must be able to
handle MathML in order to make mathematical formulas accessible to disabled
persons.

#### 8) Internationalization

Mathematical tools must support the miscellaneous scripts and notations
permitted by MathML and Unicode in order to take into account the cultural
differences of mathematical writing. This includes supporting non-latin
alphabets and bidirectional writing.

#### 9) Security and Privacy

Security and Privacy are important features for internet users. MathML must
be implemented in web engines and assistive technologies without losing
these features. Web services for mathematical content should also guarantee
these features to their users.

#### 10) Authoring

Authoring tools must give individuals the opportunity to write and edit
MathML formulas or to convert them from other mathematical representations.
