## Installation

To get this project running, you would need to enter in your terminal 'bundle install' to install all the required gems. Then 'rake db:migrate && rake db:seed && rails s' to set the database and have some sample data. Then 'rails s' will start your server. If Rails doesn't open up your browser for you, entering 'localhost:3000' in your browser should take you to the root page of the application.

## Objective

We would like to see how you perform a task that represents an aspect of our typical work, albeit somewhat simplified in the interest of time.

Big Think deals a lot with video content, tracking usage of that content, and then reporting on said usage. For the purposes of this exercise, please write a Rails application that can provide a report on all users' video usage over the last 30 days, with the following criteria.

## Acceptance criteria

* The application should contain models that represent users, videos, and video usage.
* The application should have a single route that takes a video ID and returns an HTML page.
* The HTML page should contain a graph showing the audience retention curve for a specific video. The audience retention curve shows the number of views for every moment of a video as a percentage of the total number of video views. Based on typical viewing patterns, you would expect the curve to descend as it travels along the x-axis -- fewer and fewer people continue watching as a video progresses.
* For our purposes, it is sufficient to track retention based on 25%-marks. That is, graph what percentage reached the 25% mark of the video, what percentage reached 50%, etc.

## Submission notes

* Speed of development is important (especially to the business), but quality is more so. Take your time to get it right.
* That being said, if you get stuck, let us know. It's better to speak up earlier, rather than continuing to bang your head against the wall. That only leads to frustration, and it is as helpful to us to see how far you got, and that you knew when to ask for help.
* Commit early and often. Good commit messages are appreciated by your fellow developers.
* Comments and unit tests are not required, but are likewise appreciated.
* Basically, show us your best effort on this semi-realistic exercise, so that we can get a good sense of what you'll be like to work with. There is no real "correct" answer here.

## How to submit your results

* Fork this repo and send us a pull request.
* Or, if you'd rather send a zip, that's fine too.
