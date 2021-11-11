/*
* mockup2.js
* This is for searching by artists
* Sriya and Kitty
*/


window.onload = initialize;

function initialize() {
    var element = document.getElementById('go_button');
    if (element) {
        element.onclick = onGoButton;
    }
}


function getAPIBaseURL() {
    var baseURL = window.location.protocol
                    + '//' + window.location.hostname
                    + ':' + window.location.port
                    + '/api';
    return baseURL;
}


function getArtistQuery() {
    var query = document.getElementById('artist_query').value;
    return query;
}

function onGoButton() {
    var url = getAPIBaseURL() + '/artists/' + getArtistQuery();

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(songs) {
        var tableBody = '<tr><th></th><th>Song Name</th><th>Release Date</th></tr>';

        for (var k = 0; k < artist_song_list.length; k++) {
            var song = artist_song_list[k];
            tableBody += '<tr><td><a href="' + song['url'] +'"> 🎵 ⏯ </a></td>'
                      + '<td>' + song['song_name'] + '</td>'
                      + '<td>' + song['release_date'] + '</td>'
                      + '</tr>';
        }

        var songTableElement = document.getElementById('song_table');
        if (songTableElement) {
            songTableElement.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
};
