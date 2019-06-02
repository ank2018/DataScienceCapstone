Data Science Capstone Final Project
========================================================
author: AD
date: June 2019
autosize: true

Introduction
========================================================
Coursera Data Science Capstone Project designed to predict the next word, using Natural Language Processing.This is a collaboration between professors at John Hopkins University and SwiftKey.
The goal of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 
This uses natural language processing to predict the next word(s).
There are two parts.
- Create a Shiny application and deploy it on Rstudio's servers.Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
- Use Slidify or Rstudio Presenter to prepare a reproducible pitch presentation about the application.

Process
========================================================
- Exploratory Data Analysis on the corpus of blog,twitter and news.
- Getting and Cleaning 0.001% of each of the sample dataset.
- The application uses NLP (Natural Language Processing), namely, n-grams, Katz's back-off model to perform text prediction. https://en.wikipedia.org/wiki/Katz%27s_back-off_model
- Katz back-off is a generative n-gram language model that estimates the conditional probability of a word given its history in the n-gram. It accomplishes this estimation by backing off through progressively shorter history models.By doing so, the model with the most reliable information about a given history is used to provide the better results.


Algorithm
========================================================
- The application uses NLP (Natural Language Processing), namely, n-grams, Katz's back-off model to perform text prediction. 
- The corpus is tokenized into n-grams (n = 1,2,3,4).Sample data is cleaned and converted tolowercase,punctuations,whitespaces.Numbers are removed.
- Frequencies of words are found for each n-gram.
- Onegram,Bigram,Trigram and Quadgram matrices were created.
- Data frames were then used to predict next word.
- Predictions are saved in files for reference.App looks for the prediction matching 4 words, 3 words and so on.


Shiny Application
========================================================
- The application user interface accepts an input text to enter word(s).
- Based on the prediction algorithm using bigram, trigram, quadgram for the sample file, next word or words is displayed.
- Shiny application for this assignment has the source data derived from a corpus called HC Corpora.The data contains three different files for Blog, News and Twitter.
- Report url is as follows: http://rpubs.com/Ank18/501443
- The application url is as follows: https://ad2019.shinyapps.io/DSShinyApp/
- Github url is as follows: https://github.com/ank2018/DataScienceCapstone.git

