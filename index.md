---
layout: default
---

<!--
<a target="_blank" class="page-link" href="https://github.com/{{ site.github_username }}{{ site.baseurl }}"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://camo.githubusercontent.com/365986a132ccd6a44c23a9169022c0b5c890c387/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png"></a>
-->

<img src="./assets/figure/pipeline.png" alt="Drawing" style="width: 700px;" border="1"/>

# Fall 2016 Topic List

In reverse chronological order. A more detailed outline can be found [here](https://docs.google.com/spreadsheets/d/1msrQOV0zFjc5VUamFhRltz8GhS-uF010_rfaSwtTVXU/edit?usp=sharing). The GitHub repository corresponding to these lectures can be found <a target="_blank" class="page-link" href="https://github.com/2016-09-Middlebury-Data-Science/Topics">here</a>.



### 1. Data Manipulation and Data Visualization

<ul>
  {% for post in site.posts %}
    {% assign current_date = post.date | date: "%m %-d %H" %}
    {% if "09 11 07" <= current_date and current_date <= "09 28 12" %}
    <li>
      {{ post.date | date: "%a %b %-d" }} -  
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>:
      {{ post.subtitle }}
    </li>
    {% endif %}
  {% endfor %}
</ul>  
