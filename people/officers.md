---
layout: page
title: Officers
officers:
  - name: Michael Kohlhase
    role: President
  - name: Frédéric Wang
    role: Vice-President
  - name: Deyan Ginev
    role: Secretary
  - name: Raniere Silva
    role: Treasurer
---

<ul>
{% for officer in page.officers %}
<li>{{officer.name}}, {{officer.role}}</li>
{% endfor %}
</ul>
