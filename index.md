---
layout: default
---


<img src="./assets/figure/pipeline.png" alt="Drawing" style="width: 700px;" border="1"/>

# Fall 2016 Topic List

In reverse chronological order. A more detailed outline can be found [here](https://docs.google.com/spreadsheets/d/1msrQOV0zFjc5VUamFhRltz8GhS-uF010_rfaSwtTVXU/edit?usp=sharing). The GitHub repository corresponding to these lectures can be found <a target="_blank" class="page-link" href="https://github.com/2016-09-Middlebury-Data-Science/Topics">here</a>.



### 1. Data Manipulation and Data Visualization

<ul>
  {% for post in site.posts %}
    {% assign current_date = post.date | date: "%m %-d %H" %}
    {% if "09 11 07" <= current_date and current_date <= "09 30 12" %}
    <li>
      {{ post.date | date: "%a %b %-d" }} -  
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>:
      {{ post.subtitle }}
    </li>
    {% endif %}
  {% endfor %}
</ul>  
