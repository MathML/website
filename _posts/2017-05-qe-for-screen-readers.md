# MathML Accessibility via Aria Labels: a Practice Test
## Daniel Hajas, Michael Kohlhase, Ulrich Rabenstein

### Introduction

Access to Science, Technology, Engineering, Mathematics (STEM) information can 
be particularly challenging for visually impaired people. The routes of the 
challenges are 
* the extensive use of graphical information e.g. graphs and diagrams,
* the highly symbolic language used for expressing mathematical relations, 
* often in an out-of-line mode for example sub-, and superscripts, or fractions. 
People with insufficient sight rely on screen reader software solutions either 
complementary or completely substituting screen magnification solutions. Screen 
readers can process computerised input and return output in either refreshable 
braille, or synthetic speech, known as Text-To-Speech (TTS). The principal way 
screen readers work is a line by line rendering of text. This is why WYSIWYG 
equation editors producing a visual “2D” output (e.g. fractions, binomial 
coefficients) are often inaccessible. Markup languages such as, LaTeX, or 
MathML offer in-line text processing and therefore are considered to be 
screen reader compatible. 

We have investigated the use of aria labels for better accessibility of HTML
documents including MathML for blind people.  Concretely, we looked at adding
aria labels to MathML expressions in order to improve the output of screen
reading programs. As an application for that, we have used the output of
Ulrich Rabenstein's master thesis about the spotting of quantity expressions in
arXMLiv documents. With these results, we want to add semantic information in
the form of aria labels to the original documents. 

While humans are capable of assigning semantic meaning to quantity expressions 
and distinguish their meaning dependent of content, screen readers have trouble 
performing the same task, hence leading to potential confusion and 
inconveniences for visually impaired people. Examples are notation for measuring 
units, or meaning of superscripts. Currently, screen reading programs can not 
distinguish between a superscript symbolising a power, notation for chemical 
elements, or as notation for covariant vector components, indications of order 
of perturbation. Although attempts have been made for the interpretation of 
measuring unit notation, this usually only extends to a small number of cases 
such as, "A" for "Ampere", "mm" for "millimetres". These semantic definitions 
are stored in dictionary or script files of the relevant speech synthesiser and 
are linked to rule sets. For example a numerical character (e.g. 3) preceding 
the symbol “m” may be rendered as “three meters” or “three minutes” depending 
on manufacturer. The small set of defined measuring units, and the occasional 
incorrect interpretation require improvements in the field. Here, we focus on 
measuring units and report an alternative way to overcome the problem outlined. 
As a running example, we use "1500 V", for which a screen reader that access
the aria labels should read "1500 Volt". 

### Forms of adding aria labels

We have looked at three different ways to add aria labels to the documents.
The first one is to add them directly to their corresponding MathML nodes as in
the following snippet:
```
<math>
  <mn>1500</mn>
  <mi aria-label="Volt">V</mi>
</math>
```
Additionally we have also wrapped the presentation MathML inside a ```div```
node and added the aria label to the ```div``` node.
```
<div role="math" aria-label="1500 Volt">
  <math>
    <mn>1500</mn>
    <mi>V</mi>
  </math>
</div>
```
In the processed documents, quantity expressions occur not only in MathML but
also in text. To preserve the structure of the documents, we also included the
textual nodes inside ```div```s with aria labels as in this snippet:
```
<div role="math" aria-label="1500 Volt">
  <span>1500</span>
  <span> </span>
  <span>V</span>
</div>
```
For verification of results presented below, we also performed tests on textual 
nodes wrapped in ```div```s using ```none``` as a value for the ```role``` 
attribute.

### Results

In conjunction with [Grapheel](http://www.grapheel.com) represented by Daniel 
Hajas, we have tested these encodings with different screen readers, different browsers
and on different platforms. As screen readers, we used 
[NVDA 2016](https://www.nvaccess.org/) and 
[JAWS 17.0](http://www.freedomscientific.com/Products/Blindness/JAWS) on Windows
with Firefox 50 and Internet Explorer 11 as browsers.  Additionally on Windows, there
is the option to activate or deactivate 
[MathPlayer](https://www.dessci.com/en/products/mathplayer/tech/accessibility.htm) 
for the screen reader + browser setup. On Mac, we used 
[VoiceOver](http://www.apple.com/accessibility/mac/vision/) with Safari. 

However for the first option of snippets, all of the setups ignored the deep aria labels
completely.

For the second way of adding aria labels, we found one working configuration,
namely NVDA with Internet Explorer with MathPlayer being deactivated. This way, 
it was possible to read the label and not only the content of the ```div```.

We were surprised to observe the following completely different results for the
third case:
- NVDA with Internet Explorer (with or without MathPlayer) reads "1500 V", but
  not the aria label
- NVDA with Firefox (with or without MathPlayer) reads nothing at all, not even
  "1500 V"
- JAWS 17.0 with Internet Explorer 11 (with or without MathPlayer) reads "1500
  V"
- JAWS 17.0 with Firefox (with or without MathPlayer) actually reads "1500
  Volt" from the aria label!
- VoiceOver with Safari reads only "1500 V"

So the previous configuration for presentation MathML inside a ```div``` node
(NVDA + Internet Explorer + MathPlayer deactivated) fails when there is text
inside the ```div```, but JAWS with Firefox works now, although it did not work
for the former case. We are currently investigating whether different values of
the role-attribute change the behaviour of the screen readers. Preliminary results 
show that ARIA labels are only taken in account if we set the attribute to ```math```. 
Using ```none``` in every possible permutation only ```1500 V``` is read. 
Interestingly however, with this attribute the NVDA plus FireFox again reads 
```1500 V``` instead of completely ignoring it. From our current
point of view, we do not see a configuration that works with both presentation
MathML and text inside ```div```s. Hence as a current workaround, we replace
textual quantity expressions by presentation MathML in the documents and then
use NVDA and Internet Explorer for screen reading. This enables us to open the 
same html document in the same browser, and simply switching between NVDA and JAWS, 
we can reveal the information encoded in the ARIA label, namely, that 1500 V means 1500 Volts.

### Interpretation of results

Our experiments suggest that recent introduction of solutions for exploring MathML content 
such as Math Viewer introduced in JAWS 16.0 or the MathPlayer add-on to enable 
NVDA explore MathML ignore ARIA labels completely. This is understandable since 
ARIA labels were means of providing textual descriptions for equations prior to 
explore features. Since symbol names are defined in character tables based on 
their unicode values, and XML processing is also taken care of a screen reader, 
MathML content is considered accessible with enhanced features compared to a 
single ARIA label. This is why NVDA could access the ARIA label in Internet 
Explorer when MathPlayer is deactivated. However, we argue that ARIA labels can 
be a valuable tool for purposes of encoding semantic interpretation. We propose, 
screen reader developers should enable their mathematical explorer to process 
deep ARIA labels within presentational MathML, while rendering HTML documents 
to speech or braille.