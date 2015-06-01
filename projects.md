---
layout: page
title: Projects
projects:
- name: Community Meetings
  description: Monthly online meeting open to anyone interested in MathML.
  coordinator: Raniere Silva
- name: MathML on Gecko
  description: Native support of MathML on Gecko, the engine of Firefox.
  coordinator:
- name: MathML on WebKit
  description: Native support of MathML on WebKit, the engine of Safari.
  coordinator:
---

## Submit a project

## List of projects

{% for project in page.projects %}
<div class="project">
<p><strong>{{project.name}}</strong></p>
<p>{{project.description}}</p>
<p><strong>Coordinator:</strong> {{project.coordinator}}</p>
</div>
{% endfor %}
