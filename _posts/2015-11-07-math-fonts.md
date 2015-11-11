---
layout: post
title: "Supporting mathematical fonts"
category:
tags: [fonts]
---

As stated in [our manifesto](/legal-documents/manifesto.html),
mathematical fonts are extremely important to provide good mathematical
rendering.
In a [previous announcement](/announcement/2015/10/10/mathml-in-html5.html), we
mentioned the publication of a ["MathML in HTML5" implementation note](/MathMLinHTML5/), relying on [Open Font Format 3](http://www.iso.org/iso/home/store/catalogue_ics/catalogue_detail_ics.htm?csnumber=66391) and more specifically the [OpenType MATH table](http://www.microsoft.com/typography/otspec/math.htm) introduced by Microsoft. Initially used
for [Microsoft Word](https://products.office.com/word), this table was later implemented in modern TeX typesetting engines such as [XeTeX](http://xetex.sourceforge.net/), [LuaTeX](http://luatex.org/) or [ConTeXt](http://www.pragma-ade.nl/). During a [crowdfunding project from 2014](http://www.ulule.com/mathematics-ebooks/), one of our [directors](/people/directors.html) submitted patches to Mozilla, Apple and Google in order to implement parsing for the OpenType MATH table in [Gecko](https://en.wikipedia.org/wiki/Gecko_%28software%29), [WebKit](https://en.wikipedia.org/wiki/WebKit) and [OTS](https://github.com/khaledhosny/ots) respectively. This opened the way to better mathematical rendering in browsers. Gecko and WebKit already use this table for their MathML support.

The use of math fonts with an OpenType MATH table has been
the opportunity for the MathML community to build relationships with font
designers. We would like to thank Microsoft for creating the Cambria Math
and making it available on Windows systems. In particular,
[Murray Sargent](http://blogs.msdn.com/b/murrays/) was very helpful in private
discussions on the MATH table and he was involved in its submission for
standardization in Open Font Format 3. [Khaled Hosny](http://www.khaledhosny.org/) by his long experience in mathematical typesetting, familiarity with Arabic notations and deep knowledge of font formats has also provided prominent support to MathML implementers. Several of his fonts are freely available on [his GitHub repository](https://github.com/khaledhosny/). The work of the [GUST e-foundry group](http://www.gust.org.pl/projects/e-foundry/) was also instrumental in providing a [modernization of the classical Computer Modern font](http://www.gust.org.pl/projects/e-foundry/lm-math) as well as many other [math fonts](http://www.gust.org.pl/projects/e-foundry/tg-math), some of them still in development. Thanks also to the [STI Pub Consortium](http://stixfonts.org/) for designing and distributing the STIX Math font and its impressive Unicode coverage for mathematical and technical symbols. We are involved in the discussion for the development of STIX 2 and we are confident that this next release will be usable for MathML rendering soon. Finally, other designers have [created fonts with a MATH table](https://github.com/fred-wang/MathFonts/) and we are very grateful for their effort.

<div style="text-align: center; padding: 1em;"><img src="/img/win-vs-typo.png" alt="A mathematical formula rendered using Windows and Typo metrics"/><div style="font-style: italic">MathML formula rendered by Firefox using the Latin Modern Math font.<br/>Left: "Windows" metrics ; Right: Typo metrics</div></div>

An important issues raised during the discussion with the
font designers is the interpretation of [vertical font metrics](https://en.wikipedia.org/wiki/Typeface#Font_metrics). The Open Font Format contains three different metrics but only the "typo" metrics are really relevant for mathematical rendering. Especially, some metrics used on Windows must take into account the tallest glyphs of the font which can be excessively large in the case of a mathematical font (e.g. when it contains big integrals). To solve that issue, Microsoft introduced a [USE_TYPO_METRICS](http://www.microsoft.com/typography/otspec/os2.htm#fss) bit that tells implementers to really use the "typo" metrics.
The MathML Association has thus been involved in implementing this feature in
Web rendering engines with the help of Mozilla and Apple developers.
More specifically, patches for [Gecko](https://bugzilla.mozilla.org/show_bug.cgi?id=598900) landed in May while patches for [WebKit](https://bugs.webkit.org/show_bug.cgi?id=131839) landed during the past two weeks. The USE_TYPO_METRICS bit is thus taken into account on all platforms in the current Firefox release. The same is true for WebKit Nightly with the exception of iOS and OS X where for now it only applies to fonts with a MATH table.

The OpenType MATH table and USE_TYPO_METRICS feature were two of the requirements of the ["MathML in HTML5" implementation note](/MathMLinHTML5/).
We will continue to support the projects of font designers and
encourage OS vendors to make mathematical fonts widely available.
Collaborating with browser vendors to
improve the use of the MATH table for MathML rendering is also one of our
top priority. We already had encouraging discussions with some WebKit developers
and we will announce more in future updates. Stay tuned!
