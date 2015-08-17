---
layout: page
title: Projects
projects:
---

**This page is under construction.**

## List of projects

{% for project in page.projects %}
<div class="project">
<p><strong>{{project.name}}</strong></p>
<p>{{project.description}}</p>
<p><strong>Coordinator:</strong> {{project.coordinator}}</p>
</div>
{% endfor %}

## Submit a project

If you want to suggest a project for the association,
please send a email to {{ site.email }}.
