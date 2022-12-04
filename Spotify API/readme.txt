AUTHORS: Kitty Tyree and Sriya Konda
DATE: November 22, 2021

DATA: Weekly top 200 song charts for each week in 2020 and their attributes.

Our data comes from two sources.
  - The song attributes (energy level, danceability, liveliness, tempo, release date)
    comes from this Kaggle dataset and can be found here:
    https://www.kaggle.com/sashankpillai/spotify-top-200-charts-20202021
  - The weekly charts, rankings, and urls come from the website Spotify Charts
    which keeps track of the weekly charts and can be found here:
    https://www.spotifycharts.com/home/
    We went through each week in 2020 and downloaded the csv file representing
    the chart.
    Since our collection of the data, this website has since been redone, and
    now, in order to access the data, you must login with a spotify account.

STATUS:
  As far as we know, our website is fully functional and cannot be broken.

    FEATURES CURRENTLY WORKING:
    • Generates a playlist with random songs that follow user’s criteria
      - Has sliders that the user can adjust criteria levels in the left sidebar
      - will notify the user if there are no songs matching the search
    • Returns a list of artists whose name contains the user’s input
      - When an artist is clicked on, a list of their charted songs will appear
      - A back button feature returns the user back to the list of artists
      - If no artists match the user's search, they will be notified
    • Returns Spotify’s top 200 chart for the date inputted by the user
      - If the user inputs a nonexistent date (feb 31), they will receive no chart
    • The welcome Page links to the other pages on website
      - Has an about section that cites our data sources and gives descriptions
        for each of the features
    • Has a favicon with the Spotifi logo (totally NOT a slightly modified Spotify logo...)
    • In all three function pages, any returned song has a link to be played on Spotify
      represented by the play icon
    • All links will open in a new tab
    • Home Icon takes you back to the Welcome page
    • All links/buttons that are made to be clicked change the cursor to a pointer so it is
      clearly clickable to the user
    • As far as we know, we are SQL protected
    • Design of website is visually appealing and consistent across pages


    FEATURES NOT WORKING:
    • After beginning to code, we found some features that we had planned to be
      unfeasible to implement in this project (creating a duration of the generated playlist).
      The features that are on the website is everything that we had planned to do
      and there is nothing that is currently broken (again, as far as we know).

NOTES:
  • Elected to not include a top navigation bar mainly for aesthetic reasons, but
    it is only one extra click to get to any page (>home_icon>page) which we, the website
    designers decided would not completely diminish the user's reservoir of goodwill.
  • The generate_playlist feature frequently does not come up with results. Due to
    the increased search criteria that has been added after the first draft,
    it narrows down the amount of songs so that many combinations return nothing.
    The most luck of finding a filled playlist is by keeping the slider values
    toward the middle range.
