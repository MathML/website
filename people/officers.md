---
layout: page
title: Officers
officers:
  - name: Michael Kohlhase
    role: President
    email: president
  - name: Frédéric Wang
    role: Vice-President
  - name: Deyan Ginev
    role: Secretary
    email: secretary
  - name: Raniere Silva
    role: Treasurer
    email: treasurer
---

<ul>
{% for officer in page.officers %}
{% if officer.email %}
<li><a href="mailto:{{officer.email}}@{{site.emaildomain}}">{{officer.name}}</a>, {{officer.role}}</li>
{% else %}
<li>{{officer.name}}, {{officer.role}}</li>
{% endif %}
{% endfor %}
</ul>
