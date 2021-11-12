/*
* mockup4.js
* This is for generating a random playlist
* Sriya and Kitty
* PLEASE NOTE! IT WILL THROW A 404 ERROR! DO NOT FRET! GO BACK ONE PAGE AND
* IT WILL SHOW UP (chrome only? not sure) HELP US FIX THIS PLEASE?
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

        for (var k = 0; k < songs.length; k++) {
            var song = songs[k];
            tableBody += '<tr><td><a href="' + song['url'] +'"> ⏯ </a></td>'
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
