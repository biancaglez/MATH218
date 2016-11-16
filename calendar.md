---
layout: page
title: Calendar
permalink: /calendar/
---


## Library 105A Discussion Presenters

Here are the presenters for each HW; we'll determine HW-5 later. Please check
the Google calendar below for exact dates of Library 105A discussions. Feel free
to divy up questions amongst yourselves; if you don't specify a preference, I'll
randomly allocate questions.

|HW-1   |HW-2      |HW-3   |HW-4   |
|:------|:---------|:------|:------|
|Andrea |Brenda    |Nina   |James  |
|Alden  |Alex      |Connor |Bianca |
|Amanda |NA        |Yuchen |Shania |
|Trisha |Katherine |Emily  |Kyra   |





<br>

***

<br>





## Important Dates

You can subscribe to my calendar for this class by adding the following URL in Google Calendar/iCal:
https://calendar.google.com/calendar/ical/aqigocv44as1nknf281es4oh1o%40group.calendar.google.com/public/basic.ics

<iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showDate=0&amp;showPrint=0&amp;showCalendars=0&amp;showTz=0&amp;mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=aqigocv44as1nknf281es4oh1o%40group.calendar.google.com&amp;color=%23853104&amp;ctz=America%2FToronto" style="border-width:0" width="700" height="600" frameborder="0" scrolling="no"></iframe>






<br>

***

<br>




## Final Project

* Key Dates:
    + Proposal due: Monday Oct 31st in class
    + Presentations: In-class from 2016/12/02 thru 2016/12/09
    + Final report due: On GitHub & RPubs by Friday Dec 16th at 5pm
* Final project details <a href = "{{ site.baseurl }}/assets/Final_Project/project.html" target = "_blank">here</a>
* Master copy on GitHub to be forked is [here](https://github.com/2016-09-Middlebury-Data-Science/Final_Project)
    + Fill in the `README.Rmd` file and Knit. This will create `README.md`, which will be the cover page for your repo
    + Push/commit **all files** necessary to reproduce your final report



#### Presentation Order

|Fri 12/2 |Mon 12/5 |Wed 12/7 |Fri 12/9  |
|:--------|:--------|:--------|:---------|
|         |Shania   |Nina     |Connor    |
|Andrea   |Bianca   |Kyra     |Emily     |
|Alden    |Alex     |Brenda   |James     |
|Amanda   |Yuchen   |Trisha   |Katherine |


**Source code**:

~~~~
library(dplyr)
# Katherine's favorite #
set.seed(9)
order <- c("Alden", "Alex", "Amanda", "Andrea", 
           "Bianca", "Brenda", "Connor", "Emily", 
           "James", "Katherine", "Kyra", "Nina", 
           "Shania", "Trisha", "Yuchen") %>% 
  sample() %>% 
  c("", .) %>% 
  matrix(nrow=4) %>% 
  data.frame()
names(order) <- c("Fri 12/2", "Mon 12/5", "Wed 12/7", "Fri 12/9")
knitr::kable(order)
~~~~







#### Past Examples

* Previous instances of Data Science
    + [Last semester at Midd](https://github.com/Middlebury-Data-Science/FinalProject/network/members)
    + [Previous year at Reed](https://github.com/ReedCollegeMATH241)
* They should all (in theory) be reproducible (if you need help, let me know)
* To view project
    1. Try to locate `.Rmd` and corresponding `.html` file of interest
    1. For `.html` files -> click on them -> View Raw -> Append `http://htmlpreview.github.io/?` to the URL so that you can view a rendered html.
* Ex: [Delaney Moran](https://github.com/DelaneyMoran/FinalProject)






<br>

***

<br>





## Homework 4

Homework 4 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-4).

* Assigned Wed 11/02
* Pre-submission due Wed 11/09
* Submission due Wed 11/16 (everyone must submit this)
* Library 105A Discussion and post-submission due Mon 11/28 (after break)

**Notes**:







<br>

***

<br>





## Homework 5

Homework 5 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-5).

* Assigned Wed 11/16
* Submission due Wed 11/30 (everyone must submit this)

**Notes**:







<br>

***

<br>





## Homework 3

Homework 3 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-3).

* Assigned Wed 10/19
* Pre-submission due Wed 10/26
* Submission due Wed 11/2 (everyone must submit this)
* Library 105A Discussion and post-submission due Wed 11/9

**Notes**:





<br>

***

<br>





## Homework 2

Homework 2 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-2).

* Assigned Wed 10/5
* Pre-submission due Wed 10/12
* Submission due Wed 10/19 (everyone must submit this)
* Library 105A Discussion and post-submission due Wed 10/26

**Notes**:





<br>

***

<br>





## Homework 1

<!--Homework 1 is posted [here](https://github.com/2016-09-Middlebury-Data-Science/HW-1).-->

Homework 1 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-1).

* Assigned Wed 9/21
* Pre-submission due Wed 9/28
* Submission due Wed 10/5 (everyone must submit this)
* Library 105A Discussion and post-submission due Wed 10/12
  
**Notes**:

1. You must submit the submission step due on Wed 10/5.
1. You must submit either the pre-submission (Wed 9/28) or the post-submission (Wed 10/12) step, having
incorporated any feedback from earlier submissions.
1. Feel free to submit all three steps if you want extra feedback.
1. All submissions are due at 9am.




<br>

***

<br>



## Homework 0

Homework 0 is posted
[here](https://github.com/2016-09-Middlebury-Data-Science/HW-0). It does not
involve any content; it will merely be a practice run of the homework submission
process for the semester. I expect there to be some hiccups this first go round.
As such, I suggest you start early. Do not spin your wheels if stuck, please speak to me. 

* Assigned Wed 9/14
* Due 9am Wed 9/21
