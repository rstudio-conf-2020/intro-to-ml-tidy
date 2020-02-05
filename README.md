[![Netlify Status](https://api.netlify.com/api/v1/badges/fc33b987-b580-4145-afc9-7d8427bf77f1/deploy-status)](https://app.netlify.com/sites/conf20-intro-ml/deploys)

<!-- Markdown snippet -->
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/rstudio-conf-2020/intro-to-ml-tidy)

Introduction to Machine Learning with the Tidyverse
================

### rstudio::conf 2020

by Alison Hill and Garrett Grolemund

-----

:spiral_calendar: January 27 and 28, 2020  
:alarm_clock:     09:00 - 17:00  
:hotel:           Continental Ballroom Room 5 (Ballroom Level)  
:writing_hand:    [https://rstd.io/conf20-intro-ml](https://rstd.io/conf20-intro-ml)  
:bento:           Lunch in Grand Ballroom A (Grand Ballroom Level)

-----

## Overview

This workshop provides a gentle introduction to machine learning and to the tidyverse packages that do machine learning. You'll learn how to train and assess predictive models with several common machine learning algorithms, as well as how to do feature engineering to improve the predictive accuracy of your models. We will focus on learning the basic theory and best practices that support machine learning, and we will do it with a modern suite of R packages known as tidymodels. Tidymodels packages, like parsnip, recipes, and rsample provide a grammar for modeling and work seamlessly with R's tidyverse packages. Students should feel comfortable plotting with ggplot2 and using the dplyr and purrr packages. You can brush up on these topics by working through the online tutorials at https://rstudio.cloud/learn/primers.

## Learning objectives

Students will learn to train, assess, and generate predictions from several common machine learning methods with the tidymodels suite of packages.

## Is this course for me?

This workshop is appropriate for attendees who answer yes to the questions below:

- Can you use mutate and purrr to transform a data frame that contains list columns?

- Can you use the ggplot2 package to make a large variety of graphs?

If you answered "no" to either question, you can brush up on these topics by working through the online tutorials at https://rstudio.cloud/learn/primers.

If you already use machine learning methods like random forests, neural networks, cross-validation or feature engineering, this course is NOT for you; register for Max Kuhn's Applied Machine Learning Workshop instead.

## Prework

Please bring a laptop to class that has the following installed:

  - A recent version of R (\>=3.6.0), which is available for free at
    cran.r-project.org

  - A recent version of RStudio Desktop (\>=1.2.1500), available for
    free at www.rstudio.com/download (RStudio Desktop Open Source
    License)

  - The R packages we will use, which you can install by connecting to
    the internet, opening RStudio, and running at the command line:
    
        install.packages(c("tidyverse", "tidymodels", "remotes", 
                            "rpart.plot", "rattle", "vip", "AmesHousing", 
                            "kknn", "rpart", "ranger", "partykit"))
        
        # and
        
        remotes::install_github(c("tidymodels/workflows", "tidymodels/tune", "tidymodels/modeldata"))

And don’t forget your power cord\!

On the day of the class, we’ll provide you with an RStudio Server Pro
login that contains all of the course materials. We will use the
software listed above only as an important backup should there be
problems with the classroom server connection.


## Schedule

| Time          | Activity         |
| :------------ | :--------------- |
| 09:00 - 10:30 | Session 1        |
| 10:30 - 11:00 | *Coffee break*   |
| 11:00 - 12:30 | Session 2        |
| 12:30 - 13:30 | *Lunch break*    |
| 13:30 - 15:00 | Session 3        |
| 15:00 - 15:30 | *Coffee break*   |
| 15:30 - 17:00 | Session 4        |

# Materials

[Overview](https://pedantic-pike-efd356.netlify.com/day-1/slides/00-overview#1)

[Predicting](https://pedantic-pike-efd356.netlify.com/day-1/slides/01-predicting#1)

-----

![](https://i.creativecommons.org/l/by/4.0/88x31.png) This work is
licensed under a [Creative Commons Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).
