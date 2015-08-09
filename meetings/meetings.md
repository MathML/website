---
layout: page
title: Meetings
upcoming:
---

# Upcoming Meetings

<!--
Use

upcoming:
- name: Board
  date: 2015-06-20

at the YAML header
-->

{% if page.upcoming %}
{% for meeting in page.upcoming %}
-   {{ meeting.name }} at {{ meeting.date }}
{% endfor %}
{% else %}
There is no meeting schedule for the upcoming weeks.
{% endif %}

# Meetings Minute Archive

Here you can find the archives of MathML Association meetings.

## Board Meetings

* [2015-20-05](board-2015-20-05.html)



