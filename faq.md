---
layout: page
title: FAQ
---

**What are the goals of the MathML association?**

The goals of the MathML association are:

* Native implementation of the MathML language in all Web rendering engines.
* Development of software tools to let users read, write, search, store and
  transfer MathML formulas; with particular attention to make them accessible
  to people with disabilities.
* Usage of the MathML language to publish educational, technical and scientific
  content in Web sites, ebooks or Web apps.

**What are your plans to implement MathML in Web rendering engines?**

Gecko (e.g. Firefox) and WebKit (e.g. Safari) are open source, have some MathML
support and there are developers from companies working on these rendering
engines who accept to review patches. Hence we will continue to collaborate
with them to fix bugs and improve the MathML support.

Blink (e.g. Chrome) is open source but Google has not expressed interest
to support native MathML until it becomes more popular on the Web and so the
short-term strategy is probably to develop a fork of Blink. Because the Blink
codebase is similar to WebKit, we can rely on the WebKit implementation. We
want to get in touch with other companies working on the Blink codebase
(Igalia, Opera, Vivaldi, etc).

Trident (Internet Explorer) is proprietary so we do not have any control on
the codebase. Microsoft has kept closing the requests for MathML support but
an implemention of "Office MathML" exists in Microsoft Office and could be
used for Trident. Hence we would like to convince Microsoft to give a this a
try.

**Where can I vote for MathML support in Chrome and Internet Explorer?**

Try [here](https://code.google.com/p/chromium/issues/detail?id=152430) and [here](https://status.modern.ie/mathml).

**How is the MathML association different from the OpenMath Society?**

As stated on the OpenMath website, the goal of OpenMath Society is to
"coordinate OpenMath activities" with focus on "semantic meaning or content" of
mathematical formulas ; but funding native MathML implementation does not seem
part of their purposes. The MathML association is instead focused on making
(presentation) MathML well-integrated into the Web platform and natively
supported by Web browsers. That said,
"the two technologies may be seen as highly complementary" and the
&lt;semantics&gt; element can be used to provide MathML formulas with both
presentation and semantics.

**How is the MathML association different from the MathJax Consortium?**

As indicated on the MathJax website, "The core of the MathJax project is the
development of its state-of-the-art, open source, JavaScript platform for
display of mathematics.". Instead, the MathML association does not focus
on promoting a particular product but intends to implement the MathML standard
into Web browsers and assistive technologies. Note that MathJax's internal
representation is MathML and its team members have advocated for native MathML
support in Web browsers, but they have never made any official statement
regarding funding plans. Moreover, the way MathJax encapsulates MathML makes it
badly integrated into the Web platform and hardly accessible to MathML-aware
tools ; hence this can only be a transition technology.
