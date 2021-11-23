/*
* Kitty Tyree and Sriya Konda
* date_search.js
* For use in the "webapp" assignment for Carleton's
* CS 257 Software Design class, Fall 2021.
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

// Retrives month value
function getMonth() {
    var query = document.getElementById('month_selector').value;
    return query;
}

// Retrives day value
function getDay() {
    var query = document.getElementById('day_selector').value;
    return query;
}

// Populates the HTML table with the chart from the user inputted date
function onSubmitButton() {
    var url = getAPIBaseURL() + '/top_200/2020' + getMonth() + getDay();

    fetch(url, {method: 'get'})

    .then((response) => response.json())

    .then(function(songs) {
        var tableBody = '<tr><th></th><th>Ranking</th><th>Song</th><th>Artist</th></tr>';

        for (var k = 0; k < songs.length; k++) {
            var song = songs[k];
            tableBody += '<tr><td><a href="' + song['url'] +'" target="_blank" rel="noopener noreferrer"> ⏯ </a></td>'
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
