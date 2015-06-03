---
layout: page
title: Members
members:
- name: Raniere Silva
  description: MathML enthusiastic and interested in MathML native support in web browsers and EPUB reader.
  roles: ["Monthly Meeting Host"]
  photo: img/members/silva.raniere.jpg
- name: Frédéric Wang
  description: About me
  roles: ["2015 Directors Board Member", "Gecko Developer"]
---

## Became a member

## List of members

{% for member in page.members %}
<div class="member">
<div class="member-photo">
{%if member.photo %}
<img src="{{member.photo}}">
{% endif %}
</div>
<div class="member-info">
<p><strong>{{member.name}}</strong></p>
<p>{{member.description}}</p>
{% if member.roles %}
<p><strong>Role:</strong>
{{ member.roles | join: ', ' }}
</p>
{% endif %}
</div>
</div>
{% endfor %}
