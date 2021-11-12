/*
* mockup4.js
* This is for generating a random playlist
* Sriya and Kitty
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


function getEnergyValue() {
    var query = document.getElementById('energy_value').value;
    query = query * 0.01
    return query;
}

function onSubmitButton() {
    var url = getAPIBaseURL() + '/generate_playlist/' + getEnergyValue();

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(songs) {
        var tableBody = '<tr><th></th><th>Song</th><th>Artist</th></tr>';

        for (var k = 0; k < playlist_song_list.length; k++) {
            var song = playlist_song_list[k];
            tableBody += '<tr><td><a href="' + song['url'] +'"> 🎵 ⏯ </a></td>'
                      + '<td>' + song['song_name'] + '</td>'
                      + '<td>' + song['artist_name'] + '</td>'
                      + '</tr>';
        }

        var playlistTableElement = document.getElementById('playlist_table');
        if (playlistTableElement) {
            playlistTableElement.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
};
