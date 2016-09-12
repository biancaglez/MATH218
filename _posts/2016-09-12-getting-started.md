---
layout: post
title:  "Getting Started"
subtitle: "We go over the syllabus, discuss what data science is, and set up the software/accounts for the course."
date:   2016-09-12 10:00:00
categories: jekyll update
---

<!--* <a href = "{{ site.baseurl }}/assets/1-Intro_and_Tools/syllabus.html" target = "_blank">Slides</a>-->


## 1. Syllabus

* Click the syllabus link above.

## 2. What is Data Science?

* <a href = "{{ site.baseurl }}/assets/intro/intro.html" target = "_blank">Slides</a>


## 3. Setting Up

Please complete the following steps before the next lecture to get set up for
this class. This should take between 60-90 minutes. If you get stuck, please
speak to me after class or during office hours.


### Software

1. Install the following software. If you already have R & RStudio installed,
please re-install both.
    * [R](https://cran.r-project.org/) programming language and software
    environment for statistical computing and graphics
    * [RStudio (preview
    version)](https://www.rstudio.com/products/rstudio/download/preview/)
    integrated development environment (IDE) for R.
        * On Macs, when prompted to install command line developper tools, select "Install"
        * On Windows, you should get a similar prompt.
    * LaTeX:
      + [MacTeX](https://tug.org/mactex/downloading.html) for Mac (2.5GB)
      + [MiKTeX](http://miktex.org/download) for Windows (176MB)
    * [Git](https://git-scm.com/) open source distributed version control system
1. Ensure you can login to RStudio Server from your browser at
[`go/rstudio`](https://rstudio.middlebury.edu). If you are off-campus you must first log into the
[Middlebury VPN](http://mediawiki.middlebury.edu/wiki/LIS/Off-campus_Access).


### R Markdown

1. Open RStudio and starting in the menu bar, go to *File* -> *New File* -> *R Markdown...*
1. If prompted to install any packages, say yes.
1. Give it an arbitrary title and select the PDF output format.
1. A document `Untitled1` should pop-up. In that panel, click on *Knit*.
1. Give the file a name and save

A PDF document should pop-up. Then 

1. Click on the downward point black arrow next to the *Knit* button and select
*Knit to HTML*
1. On the top right of the pop-up click "Publish"
1. Select RPubs -> Publish
1. Your browser should pop-up. Create an account on RPubs.
1. Give your file an arbitrary title and a desired URL.

The same analysis as the PDF above should appear on a webpage.


### Installing Packages

We now describe how to install R packages, or extensions to R, from the [CRAN repository of packages](https://cran.r-project.org/web/packages/available_packages_by_name.html). 

* In one of the panels in RStudio, there is a tab *Packages*.
* Click *Install* and in the *Packages* field type `ggplot2 dplyr` to install
both those packages.
* If prompted to restart R, say yes.
* In another panel, there is a tab *Console*. Type `library(ggplot2)` and
`library(dplyr)` and ensure the resulting messages does not contain any error
messages.


### GitHub

GitHub is a web-based Git repository hosting system.

* Go to [GitHub](https://github.com/), create an account using your `@middlebury.edu` account, and verify your email.
* Edit your profile:
    + Change your profile picture to a cropped picture of you (this will help me learn your names faster)
    + Add your name
    + (Optional) Add your personal email
* Go to [GitHub Education](https://education.github.com/discount_requests/new)
    + Request an "Individual Account" discount
    + For "How do you plan to use GitHub?" type in: For my Middlebury College
    MATH 216 Introduction to Data Science course
    https://github.com/2016-09-Middlebury-Data-Science


### RStudio and GitHub

* In the RStudio menu bar, go to *File* -> *New Project...* -> If prompted, don't save current workspace -> *New Directory* -> *Empty Project*
* Check the "Create a git repository" box.
* Give it the project an arbitrary directory name and save it any place you choose -> *Create Project*
* Follow all the steps on this [link](http://www.r-bloggers.com/rstudio-and-github/) before the section
"Create New project AND git", **however** in the final step replace
    + `mail@ewenharrison.com` with your `@middlebury.edu` email
    + `ewenharrison` with your GitHub login.
