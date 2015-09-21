---
layout: page
title: Officers
officers:
  - name: Michael Kohlhase
    role: President
    email: president
  - name: Frédéric Wang
    role: Vice-President
    email: vice-president
  - name: Deyan Ginev
    role: Secretary
    email: secretary
  - name: Raniere Silva
    role: Treasurer
    email: treasurer
---

<ul>
{% for officer in page.officers %}
<li><a href="mailto:{{officer.email}}@{{site.emaildomain}}">{{officer.name}}</a>, {{officer.role}}</li>
{% endfor %}
</ul>
