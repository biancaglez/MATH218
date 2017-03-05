---
layout: page
title: Problem Sets
permalink: /problem-sets/
---

While I encourage you to discuss problem sets with your peers, you must submit your
own answers and not simple rewordings of another's work. Furthermore, **all
collaborations must be explicitly acknowledged at the top of your submissions**.


### Problem Set 03

* **Info:**
    + *Code portion*: Assigned Sun 3/5. To be submitted on Fri 3/10 9:05am.
    + *Code review*: Assigned Fri 3/10. Due by Mon 3/13 9:05am.
    + *Ethics*:
        1. Listen to <a target="_blank" class="page-link" href="http://www.econtalk.org/archives/2016/10/cathy_oneil_on_1.html">Econ Talk podcast interview</a> (time 1h11m) of <a target="_blank" class="page-link" href="https://mathbabe.org/">Cathy O'Neil</a>, author of <a target="_blank" class="page-link" href="https://weaponsofmathdestructionbook.com/">Weapons of Math Destruction</a>.
        1. Have an answer for these discussion questions:
* **Learning Goals:**
    + Baby's first true model fitting experience!
    + However we keep things simple in that there is only one true predictor **and** you'll  know it exactly.
* **Homework:** <a target="_blank" class="page-link" href="https://github.com/rudeboybert/MATH218/tree/gh-pages/assets/PS/PS03">Data!!!</a> If you've never downloaded a CSV off GitHub, ask the person next to you. Chances are they'll know!
    + Fit any model you like!
    + You will be submitting three files on Friday at 9:05am:
        1. `PS03_FirstName_LastName.R` with your model code + MSE on the training data
        1. `PS03_submission_FirstName_LastName.csv` with your predictions
        1. `PS03_discussion_FirstName_LastName.txt` with your discussion points. Text files only please!
* **Notes:** Think
    + What is an appropriate "score" criteria in this situation.
    + I will give you a score only **after** you submit your problem set on Friday. What can you do until then?







<br>

***

<br>





### Problem Set 02

* **Info:**
    + *Code portion*: Assigned Fri 2/24. To be submitted ~~by Wed 3/1 9am~~ on Fri 3/3 at the beginning of lecture (standby for submission format).
    + *Code review*: Assigned Fri 3/3. Due by Mon 3/6 9:05am
* **Learning Goals:**
    + Implement cross-validation from scratch. Later we'll use existing R packages.
    + `dplyr` newbies: perform your first substantive data manipulation!
    + <a target="_blank" class="page-link" href="https://smartbear.com/learn/code-review/what-is-code-review/">Code review</a> to critique each other's code! What's done in practice!
* **Homework:**
    1. *Code portion*:
        + Using the `train.csv` data from the Kaggle Titanic competititon and for the gender survival model, compute what I called the "pseudo-scores": estimates of the Kaggle "score" of 76.555%. Do this via both
            1. leave-one-out cross-validation
            1. k=5 Fold cross-validation.
        + Save your work in a file called `PS02_FirstName_LastName.R`. Ex: in my case `PS02_Albert_Kim.R`. Have this ready to submit at the beginning of lecture on Fri 3/3.
        + In this same `.R` file, answer the following question in a commented section: *We saw that Kaggle takes the test data (418 rows), only reports your score on the leaderboard based on half of these data, and declares the winner based on the other half which is withholded until the very end of the competition. Not only that, Kaggle does not tell you how they split the 418 rows. Say Kaggle didn't do this and reported your score on the leaderboard based on the entire test data (418 rows). Write 2-3 sentences outlining a strategy of how you could exploit the information given by the leaderboard to get a perfect score of 100%.*
    1. *Code review*: See groups below
        + Read the following document on code review <a target="_blank" class="page-link" href="https://smartbear.com/learn/code-review/best-practices-for-peer-code-review/">practices</a> at least once.
        + Pick out only the top 3 points you'd like to point out/give feedback on
        + Create a Slack direct message with your code review partner **and the instructor "albert"**.
        + Exchange feedback in whatever format you like
* **Notes**:
    + Please feel free to work collaboratively!
* **Example Solutions:** <a target="_blank" class="page-link" href="https://github.com/rudeboybert/MATH218/blob/gh-pages/assets/PS/PS02_solutions.R">`PS02_solutions.R`</a>. Please note there are many ways of completing this assignment.

| Code Reviewer A               | Code Reviewer B        |
|:----------------|:-------------------------------------|
|Bianca Gonzalez  |Ryan Rizzo + Will Ernst               | 
|Rebecca Conover  |Tina Chen                             | 
|Elias Van Sickle |Sierra Moen                           | 
|Connor McCormick |Malik Gomez                           | 
|Kyra Gray        |Aayam Poudel                          | 
|Kelsey Hoekstra  |Xiaoli Jin                            | 
|Alfred Hurley    |Otto Nagengast                        | 
|Brenda Li        |Alexander Pastora                     | 
|Emily Miller     |Marcos Antonio de Souza Barrozo Filho | 
|Nina Sonneborn   |Ben Czekanski                         | 
|David Valentin   |Phil Hoxie                            | 
|Shannia Fu       |Jewel Chen                            |       

<!--
# Code to determine code review pairs
class <- c("Aayam Poudel", "Alexander Pastora", "Alfred Hurley", "Ben Czekanski",
"Bianca Gonzalez", "Brenda Li", "Connor McCormick", "David Valentin",
"Elias Van Sickle", "Emily Miller", "Jewel Chen", "Kelsey Hoekstra",
"Kyra Gray", "Malik Gomez", "Marcos Antonio de Souza Barrozo Filho", "Nina Sonneborn",
"Otto Nagengast", "Phil Hoxie", "Rebecca Conover", "Ryan Rizzo", "Shannia Fu",
"Sierra Moen", "Tina Chen", "Xiaoli Jin")

set.seed(3)
sample(class) %>%
  matrix(ncol=2)
-->





<br>

***

<br>





### Problem Set 01

* **Info:**
    + Assigned Wed 2/15
    + Due Fri 2/24 9am
* **Learning Goals:**
    + Getting familiar with Kaggle competition workflow
    + Allow time for `tidyverse` newbies to get up to speed
* **Homework:**
    + `tidyverse` newbies: Do DataCamp classes listed in Lec02.
    + Baby's first Kaggle competition: Titanic
        + Create a model that predicts `Survival` other than ones we've seen.
        + Submit the predictions CSV so that your ranking shows.
        + Slack message me your Kaggle name so I can find you in the rankings.
* **Notes**:
    + Don't focus on memorizing anything for now, just complete the assignment.
    + If you find yourself spinning your wheels, let me know.
* **Discussion:**
    + I don't actually care what your score was, this was about process.
    + Kaggle is very finicky about the submission format:
        * Number of rows and columns have to match exactly
        * Variable names have to match exactly
        * There can't be missing values (`NA`s) in your predictions for `Survived`
        * **Tricky**: `Survived` has to be integers and not doubles i.e. `1` and not `1.0`
        * See <a target="_blank" class="page-link" href="https://github.com/rudeboybert/MATH218/blob/gh-pages/assets/Titanic/kaggle.R">`kaggle.R`</a> for example code.





<br>

***

<br>





### Code Review Instructions


```
class <- c("Aayam Poudel", "Alexander Pastora", "Alfred Hurley", "Ben Czekanski",
"Bianca Gonzalez", "Brenda Li", "Connor McCormick", "David Valentin",
"Elias Van Sickle", "Emily Miller", "Jewel Chen", "Kelsey Hoekstra",
"Kyra Gray", "Malik Gomez", "Marcos Antonio de Souza Barrozo Filho", "Nina Sonneborn",
"Otto Nagengast", "Phil Hoxie", "Rebecca Conover", "Ryan Rizzo", "Shannia Fu",
"Sierra Moen", "Tina Chen", "Xiaoli Jin", "Will Ernst", NA)

set.seed(3)
sample(class) %>%
  matrix(ncol=2) %>% 
  as_data_frame() %>% 
  rename(`Code Reviewer A` = V1, `Code Reviewer B` = V2) %>% 
  knitr::kable()
```



<!--
<br>

***

<br>

  

## Final Group Project

* Final group project <a href = "{{ site.baseurl }}/assets/Final_Project/final_project_outline.html" target = "_blank">instructions</a>.
* Monday 11/14 updates:
    + Final group project template file <a href="{{ site.baseurl }}/assets/Final_Project/Final_Project.Rmd" target="_blank">`Final_Project.Rmd`</a> posted. One group member to upload to group's RStudio Shared Project Folder.
    + Please write your group's info in this <a href = "https://docs.google.com/spreadsheets/d/1dYdsSvJkl80VRP84qB-UpTy9YsrC4d6WYqYGVJWTYVY/edit#gid=1939155032" target = "_blank">Google Sheet</a>. Note that one group member will also be publishing the analysis on the web on <a href = "http://rpubs.com/" target = "_blank">rpubs.com</a> for all to see:
        1. Knit HTML your document as usual
        1. On the top right click "Publish" -> Select RPubs -> Publish -> Then login to RPubs.
        1. Give your file an appropriate title and URL name `Final_Project`.
        1. Copy/paste the URL into the Google Sheet above.
        1. Update your publication as need by repeating this process.






<br>

***

<br>

  

## Problem Set 11

* Assigned Sun 12/4
* Due Fri 12/9 11am


#### Learning Goals

* Perform a more realistic confidence interval calculation: **where you don't know the
real population parameter**
* Solidify understanding of confidence intervals



#### Homework

* Please read over <a href="{{ site.baseurl }}/assets/PS/PS-11.html" target="_blank">`PS-11`</a> first.
* Download these files to your computer and upload them to your `problem_sets`
folder on RStudio Server: <a href="{{ site.baseurl }}/assets/PS/PS-11.Rmd" target="_blank">`PS-11.Rmd`</a>
* <a href = "{{ site.baseurl }}/assets/PS/PS-11_discussion.html" target = "_blank">PS-11 Discussion</a>
* PS-11 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-11_discussion.Rmd" target = "_blank">`PS-11_discussion.Rmd`</a> 













<br>

***

<br>

  

## Problem Set 10

* Assigned Mon 11/21
* Due Mon 11/28 **5pm** (note special date and time)



#### Learning Goals

* Perform a start-to-finish hypothesis test and state the conclusion both a 
scientific and statistical conclusion.
* More exploratory data analysis



#### Homework

* Download these files to your computer and upload them to your `problem_sets`
folder on RStudio Server:
    + <a href = "{{ site.baseurl }}/assets/PS/hiring.csv" target = "_blank">`hiring.csv`</a> 
    + <a href="{{ site.baseurl }}/assets/PS/PS-10.Rmd" target="_blank">`PS-10.Rmd`</a>
* <a href = "{{ site.baseurl }}/assets/PS/PS-10_discussion.html" target = "_blank">PS-10 Discussion</a>
* PS-10 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-10_discussion.Rmd" target = "_blank">`PS-10_discussion.Rmd`</a> 














<br>

***

<br>

  

## Problem Set 09

* Assigned Wed 11/16
* Due Fri 11/18 11am



#### Learning Goals

* Only one question: based on `Lec25.R` from Lecture 25
* Baby's first hypothesis test!
* Further exploring the components: observed test statistics and null distributions
* Tieing in the `shuffle()` (i.e. random simulation) idea from PS-08 Question 1.b) to hypothesis testing


#### Homework

* Download these files to your computer and upload them to your `problem_sets`
folder on RStudio Server:
    + <a href = "{{ site.baseurl }}/assets/PS/grades.csv" target = "_blank">`grades.csv`</a> 
    + <a href="{{ site.baseurl }}/assets/PS/PS-09.Rmd" target="_blank">`PS-09.Rmd`</a>
* <a href = "{{ site.baseurl }}/assets/PS/PS-09_discussion.html" target = "_blank">PS-09 Discussion</a>
* PS-09 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-09_discussion.Rmd" target = "_blank">`PS-09_discussion.Rmd`</a> 










<br>

***

<br>

  

## Problem Set 08

* Assigned Fri 11/4
* Due Fri 11/11 11am



#### Learning Goals

* Understanding the two places were randomness plays a part in this class:
    + Random sampling: used for taking a sample from a population
    + Random assignment: used in experiments
* Learning to compute probabilities not using mathematical formulas, but rather 
via random simulation using
    + the data manipulation tools in the `dplyr` package
    + the sampling tools in the `mosaic` package 



#### Homework

* Download these files to your computer and upload them to your `problem_sets`
folder on RStudio Server: <a href="{{ site.baseurl }}/assets/PS/PS-08.Rmd" target="_blank">`PS-08.Rmd`</a>
* Download the <a href="https://www.openintro.org/stat/textbook.php?stat_book=os" target="_blank">OpenIntro Statistics 3rd Edition</a> open-source statistics 
textbook (the textbook I used previously for MATH 116) and save this to your 
computer.  Questions for the rest of the course will come from here.
* <a href = "{{ site.baseurl }}/assets/PS/PS-08_discussion.html" target = "_blank">PS-08 Discussion</a>
* PS-08 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-08_discussion.Rmd" target = "_blank">`PS-08_discussion.Rmd`</a> 



<br>

***

<br>

  

## Problem Set 07

* Assigned Fri 10/28
* Due Fri 11/4 11am



#### Learning Goals

* Practice turning pseudocode into code.
* More imporantly **doing research: generating answers to scientific questions
using data.**


#### Homework

* Download these files to your computer and upload them to your `problem_sets`
folder on RStudio Server:
    + <a href="{{ site.baseurl }}/assets/PS/PS-07.Rmd" target="_blank">`PS-07.Rmd`</a>
    + <a href="{{ site.baseurl }}/assets/PS/DD_vs_SB.csv" target="_blank">`DD_vs_SB.csv`</a>
* <a href = "{{ site.baseurl }}/assets/PS/PS-07_discussion.html" target = "_blank">PS-07 Discussion</a>
* PS-07 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-07_discussion.Rmd" target = "_blank">`PS-07_discussion.Rmd`</a> 




<br>

***

<br>

  

## Problem Set 06

* Assigned Fri 10/21
* Due Fri 10/28 11am
* <a href = "{{ site.baseurl }}/assets/PS/PS-06_discussion.html" target = "_blank">PS-06 Discussion</a>
* PS-06 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-06_discussion.Rmd" target = "_blank">`PS-06_discussion.Rmd`</a> 


#### Learning Goals

* Tackling your first "real" analysis using your data toolbox.
* Introducing what are in my opinion effective approaches to tackle problems of
this type, instead of taking approaches that could lead to
[this](http://giphy.com/gifs/filmlinc-nyff-michel-gondry-microbe-et-gasoil-xTiTnslZ0E5sqMbEac).
* Practice, practice, practice. Much like learning a language, the only way to
get better is practice. 



#### Homework

* Download this file to your computer and upload it to your `problem_sets`
folder on RStudio Server: <a href="{{ site.baseurl }}/assets/PS/PS-06.Rmd"
target="_blank">`PS-06.Rmd`</a>










<br>

***

<br>

  

## Problem Set 05

* Assigned Tue 10/18
* Due Fri 10/21 11am
* <a href = "{{ site.baseurl }}/assets/PS/PS-05_discussion.html" target = "_blank">PS-05 Discussion</a>
* PS-05 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-05_discussion.Rmd" target = "_blank">`PS-05_discussion.Rmd`</a> 



#### Learning Goals

* Wrap up the Grammar of Graphics
* Start wrangling data!
* Start providing useful summaries.


#### Homework

* Download this file to your computer and upload it to your `problem_sets` folder on RStudio Server: <a href="{{ site.baseurl }}/assets/PS/PS-05.Rmd" target="_blank">`PS-05.Rmd`</a>





<br>

***

<br>

  

## Problem Set 04

* Assigned Sat 10/8
* Due Fri 10/14 11am
* <a href = "{{ site.baseurl }}/assets/PS/PS-04_discussion.html" target = "_blank">PS-04 Discussion</a>
* PS-04 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-04_discussion.Rmd" target = "_blank">`PS-04_discussion.Rmd`</a> 


#### Learning Goals

* This problem set assumes you are now further comfortable with the R, RStudio, 
and R Markdown workflow, and thus the complexity of the questions asked is
increased.
* Using more of the 5NG tools for data visualization to answer meaningful
questions using real data.
* Slowly introducting notions of data manipulation/wrangling.
* Putting statistical and data sciences in a greater social context via Hans 
Rosling's 20 minute TED Talk on <a target="_blank" class="page-link"
href="https://www.ted.com/talks/hans_rosling_shows_the_best_stats_you_ve_ever_seen?language=en#t-801073">The
best stats you've ever seen</a> (**bold** title, I know) on international
development data.


#### Homework

* As described in Lec03, install the following packages
    + The `okcupiddata` package containing the `profiles` data set: profile information for ~60K San Francisco OkCupid users in June 2012
    + The `gapminder` package containing the `gapminder` data set: international development data 
* Download this file to your computer: <a href="{{ site.baseurl }}/assets/PS/PS-04.Rmd" target="_blank">`PS-04.Rmd`</a>
* Upload it to RStudio server into the `problem_sets` folder:
    + In the Files panel, navigate to your `problem_sets` folder
    + Then click "Upload"
    
    
    
    

<br>

***

<br>




  

## Problem Set 03

* Assigned Fri 9/30
* Due Fri 10/7 11am
* <a href = "{{ site.baseurl }}/assets/PS/PS-03_discussion.html" target = "_blank">PS-03 Discussion</a>
* PS-03 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-03_discussion.Rmd" target = "_blank">`PS-03_discussion.Rmd`</a> 




#### Learning Goals

* Ramping up the use of the `ggplot2` package for data visualization
* Exploring real **time series** data
* Using Google as a research tool




#### Homework

* As described in Lec03, before tackling the problem set, install the following packages
    + The `Quandl` package for making it amazingly easy to get financial and economic data from [quandl.com](https://www.quandl.com/)
    + The `lubridate` package with consistent and memorable syntax that makes working with dates easier
* Download this file to your computer: <a href="{{ site.baseurl }}/assets/PS/PS-03.Rmd" target="_blank">`PS-03.Rmd`</a>
* Upload it to RStudio server into the `problem_sets` folder:
    + In the Files panel, navigate to your `problem_sets` folder
    + Then click "Upload"


<br>

***

<br>





## Problem Set 02

* Assigned Fri 9/23
* Due Fri 9/30 11am
* <a href = "{{ site.baseurl }}/assets/PS/PS-02_discussion.html" target = "_blank">Discussion</a>
* PS-02 Discussion source code file <a href = "{{ site.baseurl }}/assets/PS/PS-02_discussion.Rmd" target = "_blank">`PS-02_discussion.Rmd`</a> 


#### Learning Goals

* Taking your first baby steps using the `ggplot2` package for data visualization: an R-based
implementation of the "Grammar of Graphics"


#### Homework

* In RStudio, on the top right of the screen, next to the cube with "R" on it, if it says
    + `problem_sets`: click on it and select "Close Project"
    + `Project: (None)`: do nothing
* Download this file to your computer: <a href="{{ site.baseurl }}/assets/PS/PS-02.Rmd" target="_blank">`PS-02.Rmd`</a>
* Upload it to RStudio server into the `problem_sets` folder
* Open it and work on it from there
* Don't forget to answer the questions in the "Please Indicate" section





<br>

***

<br>





## Problem Set 01

* Assigned Fri 9/16
* Due Fri 9/23

#### Learning Goals

* This week's problem set doesn't involve much content, but rather is about
familiarizing yourselves with the problem set workflow and submission format using R
Markdown.
* In particular, we'll go over how to share your analyses over the web with a couple of clicks of the mouse!
* You'll start
    + seeing what I mean by "computers are stupid"
    + develop the skill of "debugging": identifying and removing errors from
    code. In our case, if your R Markdown file won't knit AKA load AKA compile 
    AKA render, follow the steps in [R Markdown 
    debugging](https://docs.google.com/document/d/1P7IyZ4On9OlrCOhygFxjC7XhQqyw8OludwChz-uFd_o/edit?usp=sharing)
    (also posted on the Resources page). This usually solves about 85% of
    problems; if you're still stuck after going through the steps, speak to your
    peers or me.
* In my experience, there are always a few hiccups with R Markdown at the
beginning, but by the third assignment everyone is on board.

#### Homework

* Download this file to your computer, then upload it to the RStudio Server as described in Lec03: <a href="{{ site.baseurl }}/assets/PS/PS-01.Rmd" target="_blank">`PS-01.Rmd`</a>
* ~~Submit your homework using this [submission form](https://docs.google.com/forms/d/1n1HNo17MA21-DQ_boklchwCjfr6_qx7GrLY5ot7796g/edit)~~. See below.





<br>

***

<br>





## Problem Set Submission Process

Using <a target="_blank" class="page-link"
href="https://support.rstudio.com/hc/en-us/articles/211659737-Sharing-Projects-in-RStudio-Server-Pro">RStudio
Server project sharing</a> (which you'll also be using for your group projects)! The grader and I will go over and leave comments directly on your problem set files.

**Only do this once:**

You will create a project (i.e. an organizational folder) that you will share
with me and the grader:

* In the top right of RStudio Server click on the cube with "R" in it -> New Project... -> Click "save" when prompted
* New Directory -> Empty Project -> Enter `problem_sets` as the Directory name and click "Create Project"
* On the top right it should say `problem_sets` next to the cube with "R" in it. Click on that -> Share Project...
* In the box with the blinking cursor add `aykim` and `tsingh`
* Copy the Project URL and press OK
* Paste your URL in the appropriate row in this <a target="_blank" class="page-link"
href="https://docs.google.com/spreadsheets/d/18alOq3kFV58LepI-UZ1swl9qPWHoa0VfHnLm3S5ldXg/edit#gid=1771999784">Google Sheet</a>

**Only for problem set 1:**

Move the file `PS-01.Rmd` to the `problem_sets` shared project folder so the grader and I can access it:

* In the Files panel -> Click on the house icon
* Click the checkboxes next to `PS-01.Rmd` and `PS-01.html`
* Click the gear icon "More" -> Move...
* Select `problem_sets`

**For all future problem sets:**

* When uploading the relevant `PS-XX.Rmd` file to RStudio Server, upload it directly to the `problem_sets` folder.
-->

