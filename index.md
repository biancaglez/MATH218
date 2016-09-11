---
layout: default
---

<img src="./assets/figure/pipeline.png" alt="Drawing" style="width: 700px;" border="1"/>

# Fall 2016 Topic List

In reverse chronological order.

* A more detailed outline can be found [here](https://docs.google.com/spreadsheets/d/1msrQOV0zFjc5VUamFhRltz8GhS-uF010_rfaSwtTVXU/edit?usp=sharing).
* The GitHub repository corresponding to these topics can be found [here](https://github.com/2016-09-Middlebury-Data-Science/Topics).



### 6. Text Data


### 5. Maps and Geographic Data


### 4. Dates and Time


### 3. Regression


### 2. Data Manipulation and Data Visualization


### 1. Introduction

<ul>
  {% for post in site.posts %}
    {% assign current_date = post.date | date: "%m %-d" %}
    {% assign current_year = post.date | date: "%Y" %}
    {% assign current_month = post.date | date: "%m" %}
    {% assign current_day = post.date | date: "%-d" %}
    {% if "09 01" < current_date and current_date <= "09 15" %}
    <li>
      {{ post.date | date: "%a %b %-d" }} -  
      <a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>:
      {{ post.subtitle }}
    </li>
    {% endif %}
  {% endfor %}
</ul>  

