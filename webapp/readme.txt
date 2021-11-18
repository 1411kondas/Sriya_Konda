AUTHORS: Kitty Tyree and Sriya Konda
DATE: November 15, 2021

DATA: Top 200 charted songs for each week in 2020 and its attributes.

FEATURES CURRENTLY WORKING:
 • Generates a playlist with random songs that follow user’s criteria
 • Returns songs by artists whose name contains user’s inputs
 • Returns Spotify’s top 200 charted songs for the week by date inputted by user
 • Welcome Page links to other pages on website 
 • Has a favicon
 • Each returned song links to it’s Spotify webpage
 • Home Icon takes you back to the Welcome page

FEATURES NOT YET WORKING:
 • For generate_playlist, currently takes in only energy, more criteria will be added in
 • Duration feature in generate_playlist that will recommend a playlist with a
   length according to the time specified by the user
 • Protect queries from SQL injection
 • General HTML and CSS flow throughout the website
 • When user clicks the song link, open the Spotify page on a new tab
 • Equal and uniform spacing on all tables
 • When typing in an artist name, recommends artists based off of the string
   inputted . Clicking on the artist’s name, shows their songs
    - For example: If the user types in “jo”, the website will show a list of
      possible artists like {“John Legend”, “Joji”, … “Journey”}. Then the user
      can click on the artist of their choice to get the artist’s songs.
 • Add elegant descriptions on home page about each website feature
 • Change artist query so that it matches the last part of the artist’s name to
   the input given by the user

NOTE:
data.sql is in the data folder. In order to access it to add it into your database,
you must cd into the data folder or use data/data.sql
