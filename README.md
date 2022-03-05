# 'An introduction to data science in R' - Exercises

This package contains exercises accompanying the course
'An introduction to data science in R' taught by Claudius Gräbner-Radkowitsch
in the spring semester 2022 at the Europa University Flensburg.

You should install this package via 

```
remotes::install_github(repo = "graebnerc/DataScienceExercises")
```

Then you can complete exercises by calling the following command:

```
learnr::run_tutorial(
  name = "name_of_exercise_sheet", 
  package = "DataScienceExercises", 
  shiny_args=list("launch.browser"=TRUE))
```

You get information about the relevant names of the exercises via the course
homepage. The first exercise sheet, for instance, is called "Basics" and is
called by:

```
learnr::run_tutorial(
  name = "Basics", 
  package = "DataScienceExercises", 
  shiny_args=list("launch.browser"=TRUE))```

For bug reports and feedback please use the Github issue tracker.
