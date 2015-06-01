---
layout: page
title: News
---

<table style="width:100%;">
<tbody>
{% for post in site.posts %}
{% if site.wpm %}
{% assign readtime = post.content | strip_html | number_of_words | append: '.0' | divided_by:site.wpm %}
{% else %}
{% assign readtime = post.content | strip_html | number_of_words | append: '.0' | divided_by:180 %}
{% endif %}
{% assign modifiedtime = post.modified | date: "%Y%m%d" %}
{% assign posttime = post.date | date: "%Y%m%d" %}
<tr>
<td style="width:60%;">
<a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a>
</td>
<td style="width:40%;">
<time datetime="{{ post.date | date_to_xmlschema }}" class="post-time">{{ post.date | date: "%d %b %Y" }}</time>{% if post.modified %}{% if modifiedtime != posttime %} and <code>last modified on <time datetime="{{ post.modified | date: "%Y-%m-%d" }}" itemprop="dateModified">{{ post.modified | date: "%d %b %Y" }}</time></code>{% endif %}{% endif %}
in <span class="post-tags">{% for tag in post.categories %}<a href="{{ site.url }}/categories/index.html#{{ post.categories | cgi_encode }}" data-toggle="tooltip" title="Other posts from the {{ tag | capitalize }} category" rel="tag">{{ tag | capitalize }}</a>{% unless forloop.last %}&nbsp;&bull;&nbsp;{% endunless %}{% endfor %}</span> by <span itemprop="name" class="fn">{% if page.author %}{{ page.author }}{% else %}<a href="{{ site.url }}/about" title="About {{ site.owner.name }}" itemprop="url">{{ site.owner.name }}</a>{% endif %}</span>
</div>
</td>
{% endfor %}
<tbody>
<table>
