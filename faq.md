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

For more details, take a look at our [Manifesto](/legal-documents/manifesto.html).

**What are your plans to implement MathML in Web rendering engines?**

In general, we started to write a technical specification
"[MathML in HTML5](http://www.mathml-association.org/MathMLinHTML5/)" to
describe how to implement a core subset of MathML 3 in a way that is both
compatible with the existing browser codebase and with the requirement of
"high-quality" mathematical rendering. We expect that it will be instrumental
in getting native MathML implementations accepted by browser vendors.

Gecko (e.g. Firefox) and WebKit (e.g. Safari) are open source, have some MathML
support and there are developers from companies working on these rendering
engines who accept to review patches. Hence we will continue to collaborate
with them to fix bugs and improve the MathML support.

Blink (e.g. Chrome) is open source but Google has indicated they will only
consider native MathML once it becomes more popular on the Web. Hence we instead
want to get in touch with other companies working on the Blink codebase and see
if they are interested in starting a development branch with MathML support.
Fortunately, we can rely on the effort made for WebKit.

Trident (Internet Explorer) is proprietary so we do not have any control on
the codebase. According to [a blog post from Murray Sargent](http://blogs.msdn.com/b/murrays/archive/2014/04/27/opentype-math-tables.aspx), an implemention
of "Office MathML" exists in Microsoft Office and could be used for Trident.
Hence we would like to convince Microsoft to give a this a try.

**Where can I vote for MathML support in Chrome and Internet Explorer?**

Try [here](https://code.google.com/p/chromium/issues/detail?id=152430) and [here](https://status.modern.ie/mathml).

**How is the MathML association different from the OpenMath Society?**

As stated on the [OpenMath website](www.openmath.org), the goal of OpenMath Society is to "coordinate OpenMath activities" with focus on "semantic meaning or content" of mathematical formulas. The MathML association is instead focused on making MathML well-integrated into the Web platform and natively supported by Web browsers and assistive technologies.

That said, "the two technologies may be seen as highly complementary". OpenMath is strongly related to Content MathML and the &lt;semantics&gt; element can be used to provide MathML formulas with both presentation and meaning. The MathML manifesto highlights the importance of combining these two languages.

Many members of the Open Society are already involved in the MathML Association. We hope that more of them will support the MathML Manifesto and could become MathML affiliates.

**How is the MathML association different from the MathJax Consortium?**

As stated on the [MathJax website](https://www.mathjax.org), "The core of the MathJax project is the development of its state-of-the-art, open source, JavaScript platform for display of mathematics" while the MathML Association does not focus on a particular product but on native support everywhere.

We are happy that MathJax has already embraced MathML, which is used as its core formula representation language. While MathJax has provided an invaluable bridge solution for displaying beautiful math-on-the-web today, the MathML association is focusing on advancing the state of web mathematics tomorrow.

Our goal towards standards-compliant web mathematics, via native MathML support in all browsers, aims at faster rendering, better accessibility and towards building a healthy ecosystem of math web application development. [Quoting MathJax's Manager](http://exchanges.wiley.com/blog/2015/03/02/making-math-and-science-first-class-citizens-on-the-web/), "While we are proud of our accomplishments at MathJax, we know that we can only provide half the solution: native browser support must be the goal". Consequently, we hope that the MathJax Consortium will support our manifesto and could become a MathML affiliate.
