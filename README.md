## Installation

To get this project running, you would need to enter in your terminal 'bundle install' to install all the required gems. Then ```rake db:migrate && rake db:seed && rails s``` to set the database and have some sample data. Then ```rails s``` will start your server. If Rails doesn't open up your browser for you, entering ```localhost:3000``` in your browser should take you to the root page of the application.

## Acceptance criteria

* The application should contain models that represent users, videos, and video usage.
* The application should have a single route that takes a video ID and returns an HTML page.
* The HTML page should contain a graph showing the audience retention curve for a specific video. The audience retention curve shows the number of views for every moment of a video as a percentage of the total number of video views. Based on typical viewing patterns, you would expect the curve to descend as it travels along the x-axis -- fewer and fewer people continue watching as a video progresses.
* For our purposes, it is sufficient to track retention based on 25%-marks. That is, graph what percentage reached the 25% mark of the video, what percentage reached 50%, etc.
