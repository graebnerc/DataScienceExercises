# Exercises for using R for data science

This package contains exercises for getting started with the programming 
language `R`. They were designed to align with the courses I am teaching at the 
Europa-University Flensburg 
(such as [this one](https://datascience-euf-spring24.netlify.app/)),
but the material they cover is most likely part of many introductions to `R`.

You can install this package via 

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

The first exercise collection, for instance, is called "Basics" and is
called by:

```
learnr::run_tutorial(
  name = "Basics", 
  package = "DataScienceExercises", 
  shiny_args=list("launch.browser"=TRUE))
```

Here is a list of the exercises currently available:

| **Exercise code**  | **Description**                                                                        |
|:-------------------|:---------------------------------------------------------------------------------------|
| Basics             | Exercises on how to conduct basic tasks in R                                           |
| Functions          | Exercises on how to define your own functions                                          |
| ObjectTypes1       | Exercises on how to handle basic object types                                          |
| ObjectTypes2       | Exercises on how to use advanced object types, such as data frames, tibbles or factors |
| Visualization1     | Building plots using ggplot2                                                           |
| ProjectOrga        | How to set up an R project and use the here function                                   |
| ProjectOrga        | How to import data, especially csv files using `data.table::fread()                    |
| RMarkdown          | An older version that contains some exercises on R Markdown                            |
| Quarto             | A newer version that contains some exercises on Quarto                                 |
| Wrangling1         | The basics of manipulating and reshaping data frames                                   |
| Wrangling2         | More exercises on making data wider or longer                                          |
| LinearRegression1  | Basics of linear regression models                                                     |
| LinearRegression2  | More advanced applications for linear regression models                                |
| Sampling           | Simulating random processes and conduct Monte Carlo simulations                        |
| Models             | Multiple choice questions on the theory of models                                      |
|                    |                                                                                        |

For bug reports and feedback please use the Github issue tracker.
