/*
*   Kitty Tyree and Sriya Konda
*   generate_playlist.js
*   For use in the "webapp" assignment for Carleton's
*   CS 257 Software Design class, Fall 2021.
*/


window.onload = initialize;

function initialize() {
    var element = document.getElementById('submit_button');
    if (element) {
        element.onclick = onSubmitButton;
    }
}


function getAPIBaseURL() {
    var baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}

// Retrives energy value from slider
function getEnergyValue() {
    var query = document.getElementById('energy_value').value;
    query = query * 0.01
    return query;
}

// Retrives danceability value from slider
function getDanceability() {
    var query = document.getElementById('danceability_value').value;
    query = query * 0.01
    return query;
}

// Retrives tempo value from slider
function getTempo() {
    var query = document.getElementById('tempo_value').value;
    return query;
}

// Retrives liveliness value from slider
function getLiveliness() {
    var query = document.getElementById('liveliness_value').value;
    query = query * 0.01
    return query;
}

// Populates HTML table with playlist containing songs fitting the criteria
// values from the sliders
function onSubmitButton() {
    var url = getAPIBaseURL() + '/generate_playlist?energy=' + getEnergyValue()
            +'&danceability=' + getDanceability() + '&tempo=' + getTempo()
            + '&liveliness=' + getLiveliness();

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(songs) {
      // In the case that no songs fit the criteria (likely)
        if (songs.length == 0){
          var tableBody = '<tr><th>There are no songs that match your search criteria 😢</th></tr>';
        }
        else {
          var tableBody = '<tr><th></th><th>Song</th><th>Artist</th></tr>';

          for (var k = 0; k < songs.length; k++) {
              var song = songs[k];
              tableBody += '<tr><td><a href="' + song['url'] +'" target="_blank" rel="noopener noreferrer"> ⏯ </a></td>'
                        + '<td>' + song['song_name'] + '</td>'
                        + '<td>' + song['artist_name'] + '</td>'
                        + '</tr>';
          }}

        var playlistTableElement = document.getElementById('playlist_table');
        if (playlistTableElement) {
            playlistTableElement.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
};
