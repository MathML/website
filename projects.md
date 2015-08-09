---
layout: page
title: Projects
projects:
---

This page is under construction.

{% for project in page.projects %}
<div class="project">
<p><strong>{{project.name}}</strong></p>
<p>{{project.description}}</p>
<p><strong>Coordinator:</strong> {{project.coordinator}}</p>
</div>
{% endfor %}
