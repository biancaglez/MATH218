---
layout: page
title: Getting Started
permalink: /getting_started/
---

Please complete the following steps to get all software and accounts set-up for this 
class. This should take between 60-90 minutes. **If anything doesn't work, please 
speak to me after class or during office hours.**

## Software

* Please install/re-install the following to update versions
    1. [R](https://cran.r-project.org/) programming language and software environment for statistical computing and graphics
    1. [RStudio (preview
version)](https://www.rstudio.com/products/rstudio/download/preview/) integrated
development environment (IDE) for R. If prompted to install command line
developper tools, select "Install".
* For each of the following, install if you haven't already
    1. [Git](https://git-scm.com/)
    1. LaTeX
        + Mac: [MacTeX](https://tug.org/mactex/downloading.html) (2.5GB)
        + Windows: [MiKTeX](http://miktex.org/download) (176MB)
    1. A working development environment (C compiler, python, etc.)
        + Mac: Latest non-beta version of [Xcode](https://developer.apple.com/download/) (4.5GB)
        + Windows: Latest version of [Rtools](https://cran.r-project.org/bin/windows/Rtools/) (103MB)

        
        

## Accounts

1. RStudio Server: Ensure you can login to Middlebury's RStudio Server from your browser at 
[`go/rstudio/`](https://rstudio.middlebury.edu). Note: If you are off-campus you must first log into the [Middlebury
VPN](http://mediawiki.middlebury.edu/wiki/LIS/Off-campus_Access).
1. GitHub: We will use GitHub to submit all homeworks (via drag-and-drop on the webpage and not via RStudio):
    + **New users**:
        + Go to [GitHub.com](https://github.com/), create an account using your `@middlebury.edu` account, and verify your email.
        + Update your profile picture.
    + **Everyone**: Direct Message me (albert) your GitHub login ID on Slack
1. Kaggle: Create an account at <a target="_blank" class="page-link" href="https://www.kaggle.com/">https://www.kaggle.com/</a>.




## Testing R Markdown

Everyone please test that you can render R Markdown files to both PDF and HTML formats:

#### PDF Output using LaTeX

1. Open RStudio and starting in the menu bar, go to *File* -> *New File* -> *R Markdown...*
1. If prompted to install any packages, say yes.
1. Give it an arbitrary title and select the PDF output format.
1. A document `Untitled1` should pop-up. In that panel, click on *Knit*.
1. Give the file a name and save

A PDF document should pop-up.

#### HTML Output Published to RPubs.com

1. Click on the downward point black arrow next to the *Knit* button and select
*Knit to HTML*
1. On the top right of the pop-up click "Publish"
1. Select RPubs -> Publish
1. Your browser should pop-up. Create an account on RPubs.
1. Give your file an arbitrary title and a desired URL.

The same analysis as the PDF above should appear on a webpage.




<!--

### RStudio and GitHub

* In the RStudio menu bar, go to *File* -> *New Project...* -> If prompted, don't save current workspace -> *New Directory* -> *Empty Project*
* Check the "Create a git repository" box.
* Give it the project an arbitrary directory name and save it any place you choose -> *Create Project*
* Follow all the steps on this [link](http://www.r-bloggers.com/rstudio-and-github/) before the section
"Create New project AND git", **however** in the final step replace
    + `mail@ewenharrison.com` with your `@middlebury.edu` email
    + `ewenharrison` with your GitHub login.
-->
