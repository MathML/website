---
layout: post
title: "MathML on Wikipedia"
category: announcement
tags: [announcement]
---

## Overview

Our director Moritz Schubotz has been working for several months on a new MathML
mode with SVG fallback for the MediaWiki Math engine. After intensive
development and testing to ensure that existing features and performance are
preserved, this mode finally became the default in all MediaWiki and Wikipedia
web sites. This opens new perspectives for better rendering, accessibility,
search, equation sharing, font & unicode support, styling, line breaking... and
more!

## Standard Improvements

Until recently, mathematical formulas were output as PNG images contrary to the
rest of the text of the page. This was the source of many inconsistencies and
problems, the most famous being the bad rendering on high resolution display,
at a large zoom level or when printed on paper.
To solve that, SVG images are now served by default to all but old browsers.
Hence this gives a clear picture at all scales. Using SVG also improves the
integration of formulas with the surrounding text e.g. baseline alignment or
text size.

<div style="text-align: center; padding: 1em;"><img src="/img/wikipedia-png-vs-svg.png" alt="Wikipedia formulas rendered with PNG or SVG images"/><div style="font-style: italic">Formula from Wikipedia's article on the <a href="https://en.wikipedia.org/wiki/Gamma_function">Gamma function</a> with PNG (above) or SVG (below)</div></div>

## More Enhancements

Although using scalable images brings a significant rendering improvements, the
mathematical formulas are still not treated as normal text but drawn with vector
graphic primitives. For instance, if you try looking for the character "λ"
using the standard search interface of your browser then you will never get a
match for variables in mathematical formulas.

At the moment OpenType math fonts are not widespread and MathML support in
browsers is inconsistent. However, if you are ready for the next level of
enhancements you can easily decide to replace the SVG display with the MathML
display using this
[Gecko addon](https://addons.mozilla.org/en-US/firefox/addon/native-mathml/) or by
inserting [a few CSS lines](https://www.mediawiki.org/wiki/Extension:Math/advancedSettings#CSS_for_the_MathML_with_SVG_fallback_mode)
in your custom style sheet. Depending on the font shipped with your systems,
you may also need to [install math fonts](https://developer.mozilla.org/en-US/docs/Mozilla/MathML_Project/Fonts).

After these configurations, the math rendering will be performed using standard
font selection & text shaping methods which provides better rendering, unicode
coverage, CSS customization (font-family, font-size etc.), text search,
selection etc.

<div style="text-align: center; padding: 1em;"><img src="/img/wikipedia-math-fonts.png" alt="Wikipedia formulas rendered with MathML and various math fonts"/><div style="font-style: italic">Formula from Wikipedia's article on the <a href="https://en.wikipedia.org/wiki/Gamma_function">Gamma function</a> rendered with various math fonts.</div></div>

With the MathML available in the DOM, you also have access to new enhancements. For example, you can use this
[MathML copy](https://addons.mozilla.org/en-US/firefox/addon/mathml-copy/)
to transfer MathML or TeX between Wiki pages and external programs like
Computer Algebra Systems, or a
[MathJax plugin](https://chrome.google.com/webstore/detail/math-anywhere/gebhifiddmaaeecbaiemfpejghjdjmhc)
to render formulas on browsers that do not natively support MathML yet.

<div style="text-align: center; padding: 1em;"><img src="/img/wikipedia-cas.png" alt="Copying MathML expressions from the German version of Wikibooks to Wolfram Mathematica"/><div style="font-style: italic">
On the left, there is a screen-shot, displaying a section of the book
on quantum mechanics taken on May’16 2016 as non registered
visitor using Firefox version 45, with the Native MathML plugin enabled. The
photon momentum was selected, to demonstrate the bounding boxes of the symbols,
and to copy and paste it to the computer Algebra System Mathematica (screen-shot
on the right) as In[8]. The same step was performed for the relativistic momentum
In[9]. Thereafter, an additional = sign has been manually inserted to In[8]. Thereafter
Solve[%8,λ] was typed to compute the De-Broglie wavelength.</div></div>

One improvement that is worth mentioning is that assistive technologies can use
the MathML content to provide better accessibility support for mathematical
formulas. We have successfully tested this on a wide range of tools such as
NVDA/MathPlayer, VoiceOver, Orca or ChromeVox.

<div style="text-align: center; padding: 1em;">
<iframe src="https://player.vimeo.com/video/132929583?byline=0&portrait=0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p><a href="https://vimeo.com/132929583">VoiceOver+Firefox MathML</a> from <a href="https://vimeo.com/user41690319">Fr&eacute;d&eacute;ric Wang</a>,
licensed under
<a href="http://creativecommons.org/licenses/by-sa/2.0/">
<img alt="Creative Commons Attribution-ShareAlike" src="https://i.creativecommons.org/l/by-sa/2.0/80x15.png" style="border: 0;"></a>.</p>
</div>


## Conclusion

We expect that this new mode will encourage developers of web engines and
assistive technologies to improve their MathML support. We also hope that type
designers and operating system maintainers will continue to make OpenType font
more widespread in order so that math text can be handled as any other human
languages. We are excited about the current achievement and we are looking
forward to continuing collaboration with all the developers and users in order
to provide the best experience for math on the web!
