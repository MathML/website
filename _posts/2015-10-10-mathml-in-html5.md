---
layout: post
title: "\"MathML in HTML5\" implementation note and test suite"
category: announcement
tags: [announcements]
---

Today, we published a first draft of the ["MathML in HTML5" implementation note](http://www.mathml-association.org/MathMLinHTML5/). This note takes into
account feedback from browser vendors or web users about the fact that the rules
described in the [MathML specification](http://www.w3.org/TR/MathML3/) are not
precise enough for consistent, high quality and easily implementable
mathematical rendering. Hence this note provides detailed rules based on
[TeXBook’s Appendix G](/MathMLinHTML5/bib.html#bibx16) and from the
[Open Font Format version 3](http://www.iso.org/iso/home/store/catalogue_ics/catalogue_detail_ics.htm?csnumber=66391).

As suggested by the name, the priority is to be compatible with existing
technologies of web rendering engines by relying as much as possible on CSS,
text & table layout and box models. We also used the experience gained
by several years of development in the [Mozilla's MathML Project](https://wiki.mozilla.org/MathML:Home_Page) and took into account problems found in the
more recent [WebKit's implementation](https://trac.webkit.org/wiki/MathML).
We hope that the present document will be
understandable by any implementer with sufficient knowledge of web rendering
engines and text layout. Parts of presentation MathML that do not fit well into
this framework or are rarely used in practice have been ommited. Future versions
may extend the subset of MathML considered but we expect that the present
document will already be enough to render with high quality the majority of
mathematical formulas used in practice. 

As indicated in our [Manifesto](/legal-documents/manifesto.html), we believe
that open standards are important and we strongly relied on the MathML
and Open Font Format specifications to propose these math rendering rules.
We want all the actors to get involved and we already received very positive
feedback from the Math WG and from WebKit developers. We are interested
in hearing more opinion and we will refine and improve this document based
on feedback from implementers, users and specification editors. In the future,
we may consider proposing it as an official W3C note from the Math WG.

Last but not least, we also started to write a
[test suite for "MathML in HTML5" implementation note](http://tests.mathml-association.org/). We relied on [existing approaches](http://testthewebforward.org/)
used to ensure conformance with W3C specifications and to provide tests for
continuous integration by browser vendors. By following practices developers
are used to, we hope that this test suite will be instrumental to implement
and improve native MathML in all browsers.
