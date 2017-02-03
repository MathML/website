---
layout: page
title: Board of Directors
directors:
- name: Deyan Ginev (Secretary)
  description: Deyan Ginev is pursuing a PhD in Computer Science at Jacobs University Bremen, with a focus on semantic enrichment of TeX formulas into Content MathML. He is also a core developer for LaTeXML, Authorea and PlanetMath.
  photo: img/people/ginev.deyan.jpg
  email:
  github: dginev
  twitter:
  website:
- name: Michael Kohlhase (President)
  description: Dr. Michael Kohlhase is professor for Computer Science at FAU Erlangen-Nürnberg. His research interests range from automated reasoning to eLearning via natural language semantics and the Semantic Web.
  photo: img/people/kohlhase.michael.jpg
  email: michael.kohlhase@fau.de
  github: kohlhase
  twitter:
  website: http://kwarc.info/kohlhase
- name: Moritz Schubotz (Vice-President; Friends Officer)
  description: Moritz Schubotz alias Physikerwelt is research associate at Technische Universität Berlin. His research vision is to find instantiations of mathematical concepts independent of the concrete representation in huge corpora of human readable documents.
  photo: img/people/schubotz.moritz.jpg
  email:
  github: physikerwelt
  twitter:
  website:
- name: Raniere Silva (Treasuere)
  description: Raniere Silva holds a BSc in applied mathematics from University of Campinas and is involved with MathML as an enthusiast. He is also a core developer for Software Carpentry.
  photo: img/people/silva.raniere.jpg
  email: raniere@ime.unicamp.br
  github: r-gaia-cs
  twitter: rgaiacs
  website: http://rgaiacs.com
---

{% for people in page.directors %}
<div class="people">
<div class="people-photo">
{%if people.photo %}
<img src="/{{people.photo}}">
{% endif %}
</div>
<div class="people-info">
<p><strong>{{people.name}}</strong></p>
<p>{{people.description}}</p>
{% if people.website %}
<a href="{{people.website}}">
<span class="icon">{% include website-icon.html %}</span>
</a>
{% endif %}
{% if people.email %}
<a href="mailto:{{people.email}}">
<span class="icon">{% include email-icon.html %}</span>
</a>
{% endif %}
{% if people.github %}
<a href="http://github.com/{{people.github}}">
<span class="icon">{% include github-icon.html %}</span>
</a>
{% endif %}
{% if people.twitter %}
<a href="http://twitter.com/{{people.twitter}}">
<span class="icon">{% include twitter-icon.html %}</span>
</a>
{% endif %}
</div>
</div>
{% endfor %}
