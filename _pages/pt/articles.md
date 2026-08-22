---
layout: single
title: ""
permalink: /articles/
author_profile: false
---

{% if site.data.publications and site.data.publications.size > 0 %}
<ol style="line-height: 1.6;">
  {% for pub in site.data.publications %}
    <li style="margin-bottom: 15px;">
      <strong>{{ pub.title }}</strong> ({{ pub.year }})
      {% if pub.journal and pub.journal != "" %}<br><em style="color: #555;">{{ pub.journal }}</em>{% endif %}
      {% if pub.doi and pub.doi != "" %}<br><a href="{{ pub.doi }}" target="_blank" rel="noopener noreferrer">DOI: {{ pub.doi }}</a>{% endif %}
    </li>
  {% endfor %}
</ol>
{% else %}
<p>---</p>
{% endif %}
