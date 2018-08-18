# r-bootcamp-2018
SCF/D-Lab R bootcamp at UC Berkeley, August 2018

## Description

### Overview

This is the website for the sixth annual R bootcamp at Berkeley. The bootcamp will be an intensive two-day introduction to R using RStudio. Topics will include:

 * R basics - reading and manipulating data, working with R data objects, doing calculations, making plots
 * programming in R
 * doing statistical work in R
 * more advanced topics: efficiency, object-oriented programming, advanced graphics, batch jobs, parallel processing

No prior experience with R is expected, but some familiarity with programming concepts such as variables, loops, if-then-else statements, functions, etc. will be helpful.

## Logistics - when, where, and how

Course logistics

Location: Genetics & Plant Biology (GPB) 100, UC Berkeley campus ([map](https://www.google.com/maps/@37.8735542,-122.2650818,18z)).

Time: 
  - Saturday, Aug. 18, 8:15 am - 5 pm
  - Sunday, Aug. 19, 9 am - 4:30 pm

We'll start formally on Saturday morning at 8:30 am, but please plan to get here by 8:15 so you can sign in and get settled. And if you need help with any software installation please come at 8 am.

We'll provide some snacks during morning and afternoon breaks, but you're on your own for lunch. Drinks and snacks will be cold, so you'll need to bring your own favorite stimulant.

We'll have power strips, but there are a limited number of outlets, so please bring your laptops fully-charged.

Note that street parking in Berkeley near campus on Saturdays is generally subject to two hour limits.

## Preparing for the course - course content

Course content is available through Github. Please download a copy of the course materials before arriving at the bootcamp using one of the two options below (if you're familiar with Git you'll also know how to do this by cloning the repository):

  1) open RStudio. Go to “File→New Project” and select “Version Control” and “Git”. Enter 'https://github.com/berkeley-scf/r-bootcamp-2018' as the “Repository URL” and click “Create Project” (you can choose the directory in which to place the project with the “Create project as subdirectory of” option). It should create a “r-bootcamp-2018” directory with all of the materials within whichever directory you chose.

  2) Alternatively, simply download a zip file containing all the content at https://github.com/berkeley-scf/r-bootcamp-2018/archive/master.zip.

Here is the [schedule for the main track of the bootcamp](https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/schedule/schedule.pdf). This year we will also offer a second track that allows those first encountering R or programming to have time for more intensive practice with the initial material. Here is the [schedule for the second track](https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/schedule/schedule-track2.pdf). After lunch on the first day you'll have the opportunity to decide whether you want to stay with the main track or attend the second track. You do NOT need to decide in advance.

We recommend that you take a look at the syllabus and the background module (https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/modules/module0_induction.html) in advance to get a sense for what we'll cover. And for those of you with absolutely no experience with R, it will help with your learning curve if you try to play around with R using the material in (https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/modules/module1_basics.html) beforehand.

If you'd like a more relaxed introduction to R or simply to see the material from a different perspective, consider instead one of the D-Lab workshops on R (see dlab.berkeley.edu/training), in particular the workshop occurring starting August 14 (http://dlab.berkeley.edu/training/r-fundamentals-part-1-16).

For the presentation materials (including embedded demo code), see the html files in *modules*. The *_slides_* files have individual pages, while the other html files are one continuous page per module. To run the demo code, open the .Rmd file for the module in RStudio. You can then run individual chunks of code.

## Preparing for the course - software installation
Please come with a fully-charged laptop (Mac, Windows, or Linux are all ok) with R, RStudio, and Git installed. RStudio and Git are optional but highly recommended. 

To install the software, please follow option #1 here, with option #2 as a fallback. 

  1) Install the following directly on your laptop:
  
      - R [(details here)](https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/install/RandRStudioInstall.html)
      - RStudio (optional but highly recommended) [(details here)](https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/install/RandRStudioInstall.html)
      - Git (optional but recommended for obtaining course content) [(details here)](https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/install/gitInstall.html)
  2) Please use your CalNet ID and password to login [here](https://main.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=http://github.com/berkeley-scf/r-bootcamp-2018&branch=master&urlpath=rstudio). Once logged in, you should be in an RStudio session in the browser. Please then enter the command "setwd('r-bootcamp-2018/modules')" in the lower left panel. To open the R Markdown files, go to the lower right panel, click on 'Files', then 'r-bootcamp-2018', then 'modules' and finally click on the .Rmd file of interest. It will open in the upper left panel.
  3) If neither of the above work, we will provide access to RStudio just through a web browser in a different fashion, for which you don't need any software installed. HOWEVER, we can only accommodate a limited number of people under this option, so it is restricted to those who are unable to get R installed directly on their own machine. You'll need to get a paper account form from us and then follow the instructions at https://rawgit.com/berkeley-scf/r-bootcamp-2018/master/install/RStudioServerLogin.html.

Note that our ability to troubleshoot R or RStudio installed directly on your machine is limited (particularly in Windows). We'll try to help but if we run into roadblocks, we'll direct you to the browser option.

## Course Discussion and Questions

In general, please use the Google group discussion board for questions during the bootcamp or if you have software installation problems or logistical questions before the bootcamp. The discussion board can be accessed [through your browser](https://groups.google.com/a/lists.berkeley.edu/d/forum/r-bootcamp-2018) or by email to r-bootcamp-2018@lists.berkeley.edu.

If you need to contact us directly with an administrative question you can email r-bootcamp@lists.berkeley.edu.
