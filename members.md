---
layout: page
title: Members
members:
- name: Raniere Silva
  description: About me
  role: Role
  photo: img/members/silva.raniere.jpg
- name: Frédéric Wang
  description: About me
  role: Member
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
{% if member.role %}
<p><strong>Role:</strong> {{member.role}}</p>
{% endif %}
</div>
</div>
{% endfor %}
