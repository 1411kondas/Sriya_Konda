/*
* mockup3.js
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


function getMonth() {
    var query = document.getElementById('month_selector').value;
    return query;
}

function getDay() {
    var query = document.getElementById('day_selector').value;
    return query;
}


function onSubmitButton() {
    var url = getAPIBaseURL() + '/top_200/2020' + getMonth() + getDay();

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(songs) {
        var tableBody = '<tr><th></th><th>Ranking</th><th>Song</th><th>Artist</th></tr>';

        for (var k = 0; k < songs.length; k++) {
            var song = songs[k];
            tableBody += '<tr><td><a href="' + song['url'] +'"> ⏯ </a></td>'
                      + '<td>' + song['song_rank'] + '</td>'
                      + '<td>' + song['song_name'] + '</td>'
                      + '<td>' + song['artist_name'] + '</td>'
                      + '</tr>';
        }

        var chartTableElement = document.getElementById('chart_table');
        if (chartTableElement) {
            chartTableElement.innerHTML = tableBody;
        }
    })

    .catch(function(error) {
        console.log(error);
    });
};
