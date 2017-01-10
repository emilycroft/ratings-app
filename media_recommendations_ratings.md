#Books/TV/Movies/Music/Video Games/??? Rating/ Recommendations App

#Features we want:
+ Store a list of media you'd like to consume––to a my recommendations list
+ Rate media
+ Add someone as a friend
+ Recommend something to a friend?
+ If we have time (haha lol) grab reviews from an API
+ Again, if there is time have some kind of news feed showing top rated media and what your friends are watching
+ Link to external sources like Spotify or Netflix to get access to the media; link to a show or movie IMDB page; link to iTunes; link to Amazon bookstore; link to Google books


##### MODELS NEEDED
+ Media object?
+ User object
+ Reviews object
+ Likes object
+ Friends object
+ Genres object


##### Relationships
+ User has many:
  * recommendations
  * liked objects
  * friends(an array containing instances of other users)
+ Media as an umbrella topic with many different types
+ Each media object has many:
  * reviews
  * likes
+ Reviews
  belong to:
    * user
  has one:
    * media type





















#
